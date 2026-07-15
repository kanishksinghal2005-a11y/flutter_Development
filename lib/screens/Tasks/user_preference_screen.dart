import 'package:flutter/material.dart';

class UserPreferenceScreen extends StatefulWidget {
  const UserPreferenceScreen({super.key});

  @override
  State<UserPreferenceScreen> createState() => _UserPreferenceScreenState();
}

class _UserPreferenceScreenState extends State<UserPreferenceScreen> {
  bool notification=true;
  bool darkTheme=true;
  bool accepted=true;

  String gender="Female";
  String interest="Flutter";
  int currentStep=1;
  double fontSize=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor:  const Color.fromARGB(255, 4, 135, 243),
        title: Text("User Preferences",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          setState(() {
            Navigator.pop(context);
          });
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,))
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.deepPurple.shade50,
                  child: Icon(Icons.notifications_none,color: Colors.deepPurple,),
                ),SizedBox(width: 10,),
                Expanded(child: Text("Enabel Notifications",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
                Switch(value: notification,activeColor: Colors.deepPurple, 
                onChanged: (value){
                  setState(() {
                    notification=value;
                  });
                })
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Notification: ${notification? "Enabled":"Disabled"} ",style: TextStyle(color: notification?Colors.green:Colors.red,fontWeight:  FontWeight.bold,fontSize: 12),),
              ],
            ),Divider(),

            Row(children: [
              Icon(Icons.palette,color: darkTheme?Colors.white:Colors.black,),SizedBox(width: 10,),
              Text("Choose Theme",style: TextStyle(fontWeight: FontWeight.bold),)
            ],),SizedBox(height: 10,),
            Row(
              children: [
                
                ElevatedButton.icon(style: ElevatedButton.styleFrom(
                  backgroundColor: !darkTheme?Colors.amber.shade100:Colors.grey.shade200,foregroundColor: !darkTheme?Colors.black:Colors.white
                ),onPressed: (){
                  setState(() {
                    darkTheme=false;
                  });

                },icon: Icon(Icons.light_mode), label: Text("Light"),),
                SizedBox(width: 15,),
                ElevatedButton.icon(style: ElevatedButton.styleFrom(
                  backgroundColor: darkTheme?Colors.deepPurple:Colors.grey.shade200,foregroundColor: darkTheme?Colors.white:Colors.black
                ),onPressed: (){
                  setState(() {
                    darkTheme=true;
                  });
                }, icon: Icon(Icons.dark_mode),label: Text("Dark")),
              ],
            ),
            SizedBox(height: 10,),
            Text("Seleted Mode:${darkTheme?"Dark":"Light"}",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
            Divider(),
            Row(children: [
              Icon(Icons.person_outline_rounded,),SizedBox(width: 10,), Text("Select Gender",style: TextStyle(fontWeight: FontWeight.bold),),
            ],),
            Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [

    // Male
    Row(
      children: [
        Radio<String>(
          value: "Male",
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value!;
            });
          },
        ),
        const Text("Male"),
      ],
    ),

    // Female
    Row(
      children: [
        Radio<String>(
          value: "Female",
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value!;
            });
          },
        ),
        const Text("Female"),
      ],
    ),

    // Other
    Row(
      children: [
        Radio<String>(
          value: "Other",
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value!;
            });
          },
        ),
        const Text("Other"),
      ],
    ),
  ],
),

const SizedBox(height: 10),

Text(
  "Selected Gender : $gender",
  style: const TextStyle(
    color: Colors.deepPurple,
    fontWeight: FontWeight.bold,
  ),
),
Divider(),

  CheckboxListTile(value: accepted, 
  fillColor: WidgetStateProperty.all(accepted?Colors.green:Colors.white)
  ,
  controlAffinity: ListTileControlAffinity.leading
  ,onChanged: (value){
    setState(() {
      accepted=value!;
    },
    
    );

  },title: Text("I accept the Terms and Conditions.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
  ),
  Text("Status: ${accepted?"Accepted":"Not Accepted"}",style: TextStyle(color: accepted?Colors.green:Colors.red),),Divider(),
   Text(
            "Font Size (${fontSize.toInt()})",
            style: const TextStyle(
                fontWeight: FontWeight.bold),
          ),

          Slider(

            min:10,
            max:30,

            activeColor: Colors.deepPurple,

            value: fontSize,

            onChanged: (value){

              setState(() {

                fontSize=value;

              });

            },

          ),

          Center(

            child: Text(

              "Flutter is Awesome!",

              style: TextStyle(

                fontSize: fontSize,

                fontWeight: FontWeight.bold,

              ),

            ),

          ),

          const Divider(height:30),
           const Text(
            "Choose Interest",
            style: TextStyle(
                fontWeight: FontWeight.bold),
          ),

          const SizedBox(height:10),

          Wrap(

            spacing:10,

            children: [

              ChoiceChip(

                label: const Text("Flutter"),

                selected: interest=="Flutter",

                onSelected: (value){

                  setState(() {

                    interest="Flutter";

                  });

                },

              ),

              ChoiceChip(

                label: const Text("AI"),

                selected: interest=="AI",

                onSelected: (value){

                  setState(() {

                    interest="AI";

                  });

                },

              ),

              ChoiceChip(

                label: const Text("Web"),

                selected: interest=="Web",

                onSelected: (value){

                  setState(() {

                    interest="Web";

                  });

                },

              ),

              ChoiceChip(

                label: const Text("Game"),

                selected: interest=="Game",

                onSelected: (value){

                  setState(() {

                    interest="Game";

                  });

                },

              ),

            ],

          ),

          const SizedBox(height:10),

          Text(
            "Selected Interest : $interest",
            style: const TextStyle(
                color: Colors.deepPurple,fontWeight: FontWeight.bold),
          ),

          const Divider(height:30),
           Row(
            children: [
              Icon(Icons.quickreply,color: Colors.yellow,),SizedBox(width: 5,)

              ,Text("Quick Access",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),SizedBox(height: 10,),

          Row(

            children: [

              Expanded(

                child: ElevatedButton.icon(

                  onPressed: (){

                    setState(() {

                      notification=true;
                      darkTheme=true;
                      accepted=true;
                      gender="Female";
                      interest="Flutter";
                      fontSize=20;

                    });

                  },

                  icon: const Icon(Icons.refresh),

                  label: const Text("Reset"),
                ),

              ),

              const SizedBox(width:15),

              Expanded(

                child: ElevatedButton.icon(

                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                      Colors.deepPurple,
                      foregroundColor:
                      Colors.white),

                  onPressed: (){

                    ScaffoldMessenger.of(context)
                        .showSnackBar(

                      const SnackBar(

                        backgroundColor:
                        Colors.green,

                        content: Text(
                            "Preferences Saved Successfully"),

                      ),

                    );

                  },

                  icon: const Icon(Icons.save),

                  label: const Text("Save"),

                ),

              ),

            ],

          ),

          const SizedBox(height:25),Divider(),
          Row(
            children: [
              Icon(Icons.tune,color: Colors.blue,),SizedBox(width: 5,)

              ,Text("Profile Completion",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          Stepper(
  

  currentStep: currentStep,

  controlsBuilder: (context, details) {
    return const SizedBox();
  },

  onStepTapped: (step) {
    setState(() {
      currentStep = step;
    });
  },

  stepIconBuilder: (stepIndex, stepState) {

    Color color;

    if (stepState == StepState.complete) {
      color = Colors.green;
    } 
    else if (stepState == StepState.editing) {
      color = Colors.orange;
    } 
    else {
      color = Colors.grey;
    }

    return CircleAvatar(
      backgroundColor: color,
      child: Text(
        "${stepIndex + 1}",
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  },

  steps: const [

    Step(
      title: Text("Personal"),
      content: SizedBox(),
    ),

    Step(
      title: Text("Preferences"),
      content: SizedBox(),
    ),

    Step(
      title: Text("Finish"),
      content: SizedBox(),
    ),
  ],
),

          const SizedBox(height:20),
           Row(

            children: [

              Expanded(

                child: OutlinedButton(

                  onPressed: (){},

                  child: const Text("CANCEL"),

                ),

              ),

              const SizedBox(width:20),

              Expanded(

                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    Colors.deepPurple,
                    foregroundColor:
                    Colors.white,
                  ),

                  onPressed: (){},

                  child: const Text("CONTINUE"),

                ),

              ),

            ],

          ),

          const SizedBox(height:20),

       





          ],
          
        ),
      ),
    );
  }
}