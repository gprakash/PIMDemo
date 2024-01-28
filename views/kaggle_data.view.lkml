# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: kaggle_data {
  hidden: no
    join: kaggle_data__text_embedding {
      view_label: "Kaggle Data: Text Embedding"
      sql: LEFT JOIN UNNEST(${kaggle_data.text_embedding}) as kaggle_data__text_embedding ;;
      relationship: one_to_many
    }
    join: kaggle_data__image_embedding {
      view_label: "Kaggle Data: Image Embedding"
      sql: LEFT JOIN UNNEST(${kaggle_data.image_embedding}) as kaggle_data__image_embedding ;;
      relationship: one_to_many
    }
}
# The name of this view in Looker is "Kaggle Data"
view: kaggle_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `argolis-project-340214.PIMDemo.KaggleData` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Brand" in Explore.

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: crawl_timestamp {
    type: string
    sql: ${TABLE}.crawl_timestamp ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: discounted_price {
    type: number
    sql: ${TABLE}.discounted_price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_discounted_price {
    type: sum
    sql: ${discounted_price} ;;  }
  measure: average_discounted_price {
    type: average
    sql: ${discounted_price} ;;  }

  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: image_embedding {
    hidden: yes
    sql: ${TABLE}.image_embedding ;;
  }

  dimension: is_fk_advantage_product {
    type: yesno
    sql: ${TABLE}.is_FK_Advantage_product ;;
  }

  dimension: overall_rating {
    type: string
    sql: ${TABLE}.overall_rating ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }

  dimension: product_category_tree {
    type: string
    sql: ${TABLE}.product_category_tree ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_rating {
    type: string
    sql: ${TABLE}.product_rating ;;
  }

  dimension: product_specifications {
    type: string
    sql: ${TABLE}.product_specifications ;;
  }

  dimension: product_url {
    type: string
    sql: ${TABLE}.product_url ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: text_embedding {
    hidden: yes
    sql: ${TABLE}.text_embedding ;;
  }

  dimension: uniq_id {
    type: string
    sql: ${TABLE}.uniq_id ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name]
  }
}

# The name of this view in Looker is "Kaggle Data Text Embedding"
view: kaggle_data__text_embedding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Kaggle Data Text Embedding" in Explore.

  dimension: kaggle_data__text_embedding {
    type: number
    sql: kaggle_data__text_embedding ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_kaggle_data__text_embedding {
    type: sum
    sql: ${kaggle_data__text_embedding} ;;  }
  measure: average_kaggle_data__text_embedding {
    type: average
    sql: ${kaggle_data__text_embedding} ;;  }
}

# The name of this view in Looker is "Kaggle Data Image Embedding"
view: kaggle_data__image_embedding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Kaggle Data Image Embedding" in Explore.

  dimension: kaggle_data__image_embedding {
    type: number
    sql: kaggle_data__image_embedding ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_kaggle_data__image_embedding {
    type: sum
    sql: ${kaggle_data__image_embedding} ;;  }
  measure: average_kaggle_data__image_embedding {
    type: average
    sql: ${kaggle_data__image_embedding} ;;  }
}
