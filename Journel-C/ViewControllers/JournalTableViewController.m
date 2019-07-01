//
//  JournalTableViewController.m
//  Journel-C
//
//  Created by Trevor Walker on 7/1/19.
//  Copyright © 2019 Trevor Walker. All rights reserved.
//

#import "Entry.h"
#import "EntryController.h"
#import "EntryDetailViewController.h"
#import "JournalTableViewController.h"

@implementation JournalTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
//Loads data when the view is appearing
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

//gets the count of the rows
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[EntryController sharedController] entries] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    Entry *entry = [[EntryController sharedController] entries][indexPath.row];
    cell.textLabel.text = entry.title;
    return cell;
}

// Basic delete function
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Entry *entry = [[EntryController sharedController] entries][indexPath.row];
        [[EntryController sharedController] removeEntry:entry];
        [tableView reloadData];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //Checks the identifies
    if ([segue.identifier isEqualToString:@"showJournal"]) {
        //grabs the index path
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        //grabs the destination controller
        EntryDetailViewController *destinationVC = [segue destinationViewController];
        //grabs the entry we are using
        Entry *entry = [[EntryController sharedController] entries][indexPath.row];
        destinationVC.entry = entry;
    }
}

@end
