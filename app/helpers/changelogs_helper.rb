module ChangelogsHelper
	def create_changelog(user_id, obj_type, obj_id, action, is_display)
		log = Changelog.new(:obj_type => obj_type, :obj_id=>obj_id, :action=>action, :time=>Time.now, :user_id=>user_id, :display=>is_display)
		log.save
		#enforce dependency
		if action==3
			Changelog.where('obj_type=? and obj_id=?', obj_type, obj_id).update_all("display=false")
		end
	end

	def recent_changelogs(count)
		@logs = Changelog.where('display=true').order('time desc').limit(count)
	end
end
