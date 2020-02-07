#import random
#import discord
#from discord.ext import commands, tasks
#from itertools import cycle
#
#client = commands.Bot(command_prefix = '.')
#status = cycle(["status 1","status 2"])
#
#@client.event
#async def on_ready():
#    change_status.start()
#    print('Bot is ready.')
#    
#
##@client.event
##async def on_join(member):
##    print(f'{member} has joined the server.')
##
##
##
##@client.event
##async def on_leave(member):
##    print(f'{member} has left the server.')
#
#
#@client.command()
#async def ping(ctx):
#    await ctx.send(f'pong! {round(client.latency * 1000)} ms')
#
#@client.command(aliases=['8ball' , 'test', 'ask'])
#async def _8ball(ctx, *, question):
#    responses = [
#            "It is certain.",
#            "It is decidedly so.",
#            "Without a doubt.",
#            "Yes - definitely.",
#            "You may rely on it.",
#            "As I see it, yes.",
#            "Most likely.",
#            "Outlook good.",
#            "Yes.",
#            "Signs point to yes.",
#            "Reply hazy, try again.",
#            "Ask again later.",
#            "Better not tell you now.",
#            "Cannot predict now.",
#            "Concentrate and ask again.",
#            "Don't count on it.",
#            "My reply is no.",
#            "My sources say no.",
#            "Outlook not so good.",
#            "Very doubtful."]
#    await ctx.send(f'Question: {question}\nAnswer:{random.choice(responses)}')
#
#
#@client.command()
#async def joke(ctx):
#    jokes = [
##             "Q: How many programmers does it take to change a light bulb?\nA: none, that's a hardware problem",
##             "Q: 'Whats the object-oriented way to become wealthy?'\nA: Inheritance\n",
##             "Q: Why did the programmer quit his job? \n A: Because he didn't get arrays.",
##             "Q: What did the Java code say to the C code?\nA: You've got no class.",
##             "Q: Why are Assembly programmers always soaking wet?\nA: They work below C-level.",
##             "Q: What do cats and programmers have in common?\nA: When either one is unusually happy and excited,"
##             "an appropriate question would be, 'did you find a bug?'\n",
##             "Q: What is the most used language in programming?\nA: Profanity.",
##             "Q: Why did the database administrator leave his wife?\nA: She had one-to-many relationships",
#        "مرة واحد بيستهبل اتجوز واحدة بتستهبل اول ما خلفم خلفوا ولد اول ما نزل عمل نفسه  ميت",
#        "سكران وقف تاكسي قال له فاضي رد عليه إي نعم فاضي قال له السكران طيب انزل سولف معاي شوي",
#        "هبط رواد الفضاء الى المريخ واذا بهندي يطرق الزجاج ويقول: غسل صاروخ صديق",
#        "أحول دخل العسكريه حطوه في القصف العشوائي",
#        "ليه النموسه بتقفل ف الامتحانات ؟ عشان اجاباتها نموسجيه",
#        "فار محشش ماشى فى الشارع قام شافته قطه شافها جايه ناحيته وهى جايه ضربتها عربيه وهو بيهرب خبط فى الرصيف فا اغمى عليه لما فاق شاف القطه ميته قال انا لازم ابطل تحشيش علشان ما افتريش على حد تاني .",
##        "",
#        
#    ]
#    await ctx.send(f'joke is :{random.choice(jokes)}')
#
#
#
#@client.command()
#async def clear(ctx, amount : int):
#    await ctx.channel.purge(limit = amount)
#    
#    
#@client.command()
#async def kick(ctx, member : discord.Member, *,reason = None):
#    await member.kick(reason=reason)
#
#@tasks.loop(seconds=1)
#async def change_status():
#    await client.change_presence(activity=discord.game(next(status)))
#
#
#
#@client.event
#async def on_command_error(ctx, error):
#    if isinstance(error, commands.MissingRequiredArgument):
#        await ctx.send('please pass in all required arguments')
#
#
#@clear.error
#async def clear_error(ctx, error):
#    if isinstance(error, commands.MissingRequiredArgument):
#        await ctx.send('please specify an amount of messege to delete')
#    
#    
#
#client.run('NjQ0OTM1MTgxMzk1OTUxNjQ2.Xc7Qyw.3EXKZZgbqsIpvvrhdCyK3yFKuJ4')

#シシシシシシシシシシシシシシシシシシシシシシシシシシシシシシシシシ
#------------------------------------------------------
#------------------------------------------------------

import random
import discord
from discord.ext import commands





client = commands.Bot(command_prefix = '!')

#user = discord.Client()





@client.event
async def on_ready():
#    change_status.start()
    print('Bot is ready.')

#@tasks.loop(seconds=1)
#async def change_status():
#    await client.change_presence(activity=discord.game())



#@user.event
#async def on_ready():
#    print('We have logged in as {0.user}'.format(user))

@client.event
async def on_message(message):
#    if message.author == user.user:
#        return

#    if message.content.startswith('$hello'):
#        await message.channel.send('Hello!')
    if message.content.startswith('hello'):
        await message.channel.send('اكتب hello بالعربي :joy:')
        
    if message.content.startswith('اهلا'):
        await message.channel.send('هلا بيك :joy:')
        
    if message.content == 'ping':
        print('pong')
        await message.channel.send('pong')



@client.command()
async def joke(ctx):
    jokes=[
        "مرة واحد بيستهبل اتجوز واحدة بتستهبل اول ما خلفم خلفوا ولد اول ما نزل عمل نفسه  ميت",
        "سكران وقف تاكسي قال له فاضي رد عليه إي نعم فاضي قال له السكران طيب انزل سولف معاي شوي",
        "هبط رواد الفضاء الى المريخ واذا بهندي يطرق الزجاج ويقول: غسل صاروخ صديق",
        "أحول دخل العسكريه حطوه في القصف العشوائي",
        "ليه النموسه بتقفل ف الامتحانات ؟ عشان اجاباتها نموسجيه",
        "فار محشش ماشى فى الشارع قام شافته قطه شافها جايه ناحيته وهى جايه ضربتها عربيه وهو بيهرب خبط فى الرصيف فا اغمى عليه لما فاق شاف القطه ميته قال انا لازم ابطل تحشيش علشان ما افتريش على حد تاني ."
    ]
    await ctx.send(random.choice(jokes))




@client.command()
async def spin(ctx):
    weapons = [
        'M4',
        'M16A4',
        'scar-l',
        'AKM',
        'DP',
        'Uzi',
        'UMP',
        'Vector',
        'MP5',
        'SHOTGUN'
    ]
    await ctx.send(f'The weapon is : {random.choice(weapons)}')

@client.event
async def on_command_error(ctx, error):
    if isinstance(error, commands.MissingRequiredArgument):
        await ctx.send('please pass in all required arguments')

@client.command()
async def game(ctx):
    await ctx.send('hi')

#@client.command()
#async def giveaway(ctx, member : discord.Member):
#    persons=[""]
#    persons.append(member)
#    
#    await ctx.send(member.name())
#
#@client.command()
#async def playm(ctx):
#    VoiceChannel.connect()
#    


    






client.run('NjQ1MzI0MjcxMzYyNTA2Nzcz.XdhM1A.o6t3zfOQ6ijgEC5z9uQN5TMB4lY')



#user.run('NjQ1MzI0MjcxMzYyNTA2Nzcz.XdhDIA.KkEiYGQ7mHZMcVq-2iWuO8nqWv4')




























