module NotificationTracker

	# def resetCounter(question_id, player_id)
	# 	puts (Notification.find_by(question_id: question_id))
	# 	@notification = Notification.find_by(question_id: question_id)
	# 	puts @notification
	# 	#if we find the player notification
	# 	puts "before if statement"
	# 	puts player_id
	# 	puts @notification[:id]
	# 	if PlayersNotification.find_by(notification_id: @notification[:id], player_id: player_id) != nil
	# 		puts "reset counter"
	# 		@player_notification = PlayersNotification.find_by(notification_id: @notification[:id], player_id: player_id)
	# 		if @player_notification[:counter] < 3
	# 			PlayersNotification.where('notification_id = ? AND player_id = ?', @notification[:id], @player_notification[:player_id]).update_all(counter: 0)
	# 		else
	# 			puts "we don't need to reset because we already sent the notification"
	# 		end
	# 	else
	# 		puts "Player Notification not created so we don't need to reset counter"
	# 	end

	# end

	# def addPointsToPlayer(player_id, player_points)
	# 	@player = Player.find(player_id)
	# 	new_points = @player.points + player_points.to_i
	# 	@player.update(points: new_points)
	# end

	# def incrementNotification(question_id, player_id)
 #    @notification = Notification.find_by(question_id: question_id)
 #    # puts "=============="
 #    # puts @notification
 #    # puts @notification[:id]
 #    # puts @notification[:message]
 #    if @player_notification = PlayersNotification.find_by(notification_id: @notification[:id], player_id: player_id)
 #      # @player_notification[:counter] = @player_notification[:counter]+1
 #      puts @player_notification[:counter]
 #    	@new_counter = @player_notification[:counter] + 1
 #      if @new_counter == 3
 #    		puts "send notification"
	#       PlayersNotification.where('notification_id = ? AND player_id = ?', @notification[:id], @player_notification[:player_id]).update_all(counter: @new_counter )
 #    		json_response(@notification)
 #    	elsif @new_counter > 3
 #    		puts "already sent notification"
 #    		# json_response(@answer, :created)
 #    	else
	#       puts @player_notification[:counter] + 1
	#       PlayersNotification.where('notification_id = ? AND player_id = ?', @notification[:id], @player_notification[:player_id]).update_all(counter: @new_counter )
 #    		# json_response(@player_notification)
 #    		puts "added to the counter"
 #    	end
 #      puts "got here?"
 #      # json_response(@player_notification, :no_content)
 #    else
 #    	player_notification_params = {
	# 				:notification_id => @notification[:id],
	# 				:player_id => player_id,
	# 				:counter => 1,
	# 				:received => false
	# 			}
	# 		puts player_notification_params
	# 		@player_notification = PlayersNotification.create!(player_notification_params)
	# 		# json_response(@player_notification, :created)
	# 		puts @player_notification[:player_id]
 #      puts "we didn't find it"
 #    end
	# 	# @notification = Notification.find(params[:question_id])
	# 	# if @notification
	# 	# 	@player_notification = PlayersNotification.find(@notification.id)
	# 	# 	if @player_notification
	# 	# 		@player_notification.counter = @player_notification.counter+1

	# 	# 	else 
	# 	# 		player_notification_params = {
	# 	# 			:notification_id = @notification[:id]
	# 	# 			:player_id = params[:player_id]
	# 	# 			:counter = 0
	# 	# 			:received = false
	# 	# 		}
	# 	# 		@player_notification = PlayerNotification.create!(@player_notification)
	# 	# 	end
	# 	# end
	# end
end