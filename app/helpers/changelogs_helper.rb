module ChangelogsHelper
	def create_changelog(user_id, obj_type, obj_id, message)
		log = Changelog.new(:obj_type => obj_type, :obj_id=>obj_id, :message=>message, :time=>Time.now, :user_id=>user_id)
		log.save
	end

	def recent_changelogs(count)
		@logs = Changelog.order(:time).limit(count)
	end
end
