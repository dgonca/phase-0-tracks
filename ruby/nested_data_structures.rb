school = {
	total_students: 330,
	outdoors: {
		classrooms: {
			amount: 0
		},
		school_spaces: ["Gym", "Soccer Field"]
	},
	first_floor: {
		classrooms: {
			amount: 7,
			type: ["Art", "English"]
		},
		school_spaces: ["Cafeteria", "Principal's Office"]
	},

	second_floor: {
		classrooms: {
			amount: 12,
			type: ["Math", "Science", "Language"]
		},
		school_spaces: ["Library", "Faculty Room"]
	},

	third_floor: {
		classrooms: {
			amount: 9,
			type: ["History", "Home EC"]
		},
		school_spaces: ["Small Theater"]

	}
}

p school[:third_floor][:classrooms][:amount]
p school[:second_floor][:school_spaces][1]
school[:outdoors][:school_spaces].push("Basketball Court")

p school