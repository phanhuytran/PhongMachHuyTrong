package com.ndt.service.implement;

import com.ndt.enums.Order;
import com.ndt.repository.IGenericRepository;
import com.ndt.service.IGenericService;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

@Service
public abstract class GenericService<T extends Serializable> implements IGenericService<T> {
    private final IGenericRepository<T> genericRepository;

    public GenericService(IGenericRepository<T> genericRepository) {
        this.genericRepository = genericRepository;
    }

    @Override
    public T insert(T t) {
        return this.genericRepository.insert(t);
    }

    @Override
    public T getById(Class<T> type, Object id) {
        return this.genericRepository.getById(type, id);
    }

    @Override
    public T update(T t) {
        return this.genericRepository.update(t);
    }

    @Override
    public int delete(T t) {
        return this.genericRepository.delete(t);
    }

    @Override
    public List<T> getAll(Class<T> type) {
        return this.genericRepository.getAll(type);
    }

    @Override
    public List<T> getAllOrderBy(Class<T> type, String field, Enum<Order> order) {
        return this.genericRepository.getAllOrderBy(type, field, order);
    }

    @Override
    public List<T> getTop(Class<T> type, int limit) {
        return this.genericRepository.getTop(type, limit);
    }

    @Override
    public List<T> getTopOrderBy(Class<T> type, int limit, String field, Enum<Order> order) {
        return this.genericRepository.getTopOrderBy(type, limit, field, order);
    }
}
