# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_12_08_033533) do
  create_table "blog_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blog_types", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_reactions", force: :cascade do |t|
    t.boolean "user_upvoted"
    t.boolean "user_downvoted"
    t.boolean "user_reported"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "comment_id", null: false
    t.integer "user_id", null: false
    t.index ["comment_id"], name: "index_comment_reactions_on_comment_id"
    t.index ["user_id"], name: "index_comment_reactions_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.boolean "has_been_edited"
    t.string "content"
    t.integer "upvote_count"
    t.integer "downvote_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "post_id", null: false
    t.integer "user_id", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.string "video_link"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "blog_type_id", null: false
    t.integer "blog_status_id", null: false
    t.index ["blog_status_id"], name: "index_posts_on_blog_status_id"
    t.index ["blog_type_id"], name: "index_posts_on_blog_type_id"
  end

  create_table "related_posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.boolean "has_been_edited"
    t.string "content"
    t.integer "upvote_count"
    t.integer "downvote_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "comment_id", null: false
    t.integer "user_id", null: false
    t.index ["comment_id"], name: "index_replies_on_comment_id"
    t.index ["user_id"], name: "index_replies_on_user_id"
  end

  create_table "reply_reactions", force: :cascade do |t|
    t.boolean "user_upvoted"
    t.boolean "user_downvoted"
    t.boolean "user_reported"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "reply_id", null: false
    t.integer "user_id", null: false
    t.index ["reply_id"], name: "index_reply_reactions_on_reply_id"
    t.index ["user_id"], name: "index_reply_reactions_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_hash"
    t.binary "profile_icon"
    t.integer "coment_count"
    t.integer "report_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_role_id", null: false
    t.index ["user_role_id"], name: "index_users_on_user_role_id"
  end

  add_foreign_key "comment_reactions", "comments"
  add_foreign_key "comment_reactions", "users"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "posts", "blog_statuses"
  add_foreign_key "posts", "blog_types"
  add_foreign_key "replies", "comments"
  add_foreign_key "replies", "users"
  add_foreign_key "reply_reactions", "replies"
  add_foreign_key "reply_reactions", "users"
  add_foreign_key "users", "user_roles"
end
