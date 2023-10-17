#!/usr/bin/env python3
""" insert_school module"""


def insert_school(mongo_collection, **kwargs):
    """
    Inserts a new document in a collection based on **kwargs

    Args:
        mongo collection: the pymongo collection object
    Return:
        the _id of the new document
    """
    new = mongo_collection.insert_one(kwargs)
    return new.inserted_id
