package com.ndt.repository;

import com.ndt.enums.Order;

import java.util.List;

public interface IGenericRepository<T> {
    T insert(T t);
    T getById(Class<T> type, Object id);
    T update(T t);
    int delete(T t);
    List<T> getAll(Class<T> type);
    List<T> getAllOrderBy(Class<T> type, String field, Enum<Order> order);
    List<T> getTop(Class<T> type, int limit);
    List<T> getTopOrderBy(Class<T> type, int limit, String field, Enum<Order> order);
}
