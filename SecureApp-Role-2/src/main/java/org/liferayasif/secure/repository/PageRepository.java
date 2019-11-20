package org.liferayasif.secure.repository;

import java.util.List;

import org.liferayasif.secure.model.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

public interface PageRepository extends JpaRepository<Page, Integer>{

	public List<Page> findByParentId(@Param(value = "parentId") int parentId); 
}
