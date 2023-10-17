#!/usr/bin/env python3
""" List_all module"""
import pymongo


def list_all(mongo_collection):
    """
    Lists all the documents in a collection

    Args:
        mongo-collection: the pymongo collection object
    Return:
        a list of all the documents in a collection
    """
    return mongo_collection.find({})
