
view: allkaggledata {
  derived_table: {
    sql: SELECT * FROM `argolis-project-340214.PIMDemo.KaggleData` LIMIT 10 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: uniq_id {
    type: string
    sql: ${TABLE}.uniq_id ;;
  }

  dimension: crawl_timestamp {
    type: string
    sql: ${TABLE}.crawl_timestamp ;;
  }

  dimension: product_url {
    type: string
    sql: ${TABLE}.product_url ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_category_tree {
    type: string
    sql: ${TABLE}.product_category_tree ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: discounted_price {
    type: number
    sql: ${TABLE}.discounted_price ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }

  dimension: is_fk_advantage_product {
    type: yesno
    sql: ${TABLE}.is_FK_Advantage_product ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: product_rating {
    type: string
    sql: ${TABLE}.product_rating ;;
  }

  dimension: overall_rating {
    type: string
    sql: ${TABLE}.overall_rating ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: product_specifications {
    type: string
    sql: ${TABLE}.product_specifications ;;
  }

  dimension: text_embedding {
    type: number
    sql: ${TABLE}.text_embedding ;;
  }

  dimension: image_embedding {
    type: number
    sql: ${TABLE}.image_embedding ;;
  }

  set: detail {
    fields: [
        uniq_id,
	crawl_timestamp,
	product_url,
	product_name,
	product_category_tree,
	pid,
	retail_price,
	discounted_price,
	image,
	is_fk_advantage_product,
	description,
	product_rating,
	overall_rating,
	brand,
	product_specifications,
	text_embedding,
	image_embedding
    ]
  }
}
