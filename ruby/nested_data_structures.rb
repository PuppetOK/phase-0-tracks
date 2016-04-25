hockey_teams = {

	blackhawks:{
		players: [
			'Patrick Cane',
			'Duncan Keith',
			'Jonathan Toews',
			'Andrew Shaw',
		],
		team_info: {
			mascot_name: 'Tommy Hawk',
			division: 'Western Conference Central Division',
			rank: '3rd',
			teamcolors_home: ['Red','Black'],
			teamcolors_away: ['White','Black'],
		}
	},
	st_louis_blues: {
		players: [
			'Jay Bouwmeester',
			'Steve Ott',
			'Scottie Upshall',
			'Kyle Brodziak',
		],
		team_info: {
			mascot_name: 'Louie',
			division: 'Western Conference Central Division',
			rank: '2nd',
			teamcolors_home: ['Blue', 'Black'],
			teamcolors_away: ['White', 'Black'],
		}
	},
	calgary_flames:{
		players:[
			'Matt Stajan',
			'Dennis Wideman',
			'Niklas Backstrom',
			'Mark Giordano',
		],
		team_info: {
			mascot_name: 'Harvey the Hound',
			division: 'Western Conference Pacific Division',
			rank: '5th',
			teamcolors_home: ['Red', 'Black'],
			teamcolors_away: ['White', 'Red'],
		}
	},
	la_kings: {
		players:[
			'Vincent Lecavalier',
			'Marian Gaborik',
			'Dustin Brown',
			'Rob Scuderi',
		],
		team_info:{
			mascot_name: 'Bailey',
			division: 'Western Conference Pacific Division',
			rank: '2nd',
			teamcolors_home: ['White'],
			teamcolors_away: ['Black'],
		}
	}
	
}

p hockey_teams[:blackhawks][:players][0]
p hockey_teams[:blackhawks][:team_info][:mascot_name]
p hockey_teams[:calgary_flames][:team_info][:rank]
p hockey_teams[:calgary_flames][:players][3]
p hockey_teams[:la_kings][:players][2]
p hockey_teams[:la_kings][:team_info][:mascot_name]