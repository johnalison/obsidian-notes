Sindhu Murthy is a PhD student at CMU who has been working on the Silicon module assembly center for the past 4 years. While Sindhu has contributed to various projects preparing our MAC  for production,  her most significant impact has been in designing, advocating for, developing, and implementing the database strategy now used at all HGC MACs, both domestic and international.  
  
During assembly of the first modules at CMU, Sindhu was tasked with tracking which parts were used in which modules and recording any peculiarities that arose during assembly. This was months before the CERN-hosted central database was expected to be operational. I told her:  *take good notes and don't lose them*. I assumed she would create a Google Sheet to record the information in an ad hoc way;  it's what I would have done and would have probably been sufficient...especially because the central database would be up and running soon.  
  
Sindhu took this as an opportunity to implement something more scalable. At this point she had been interacting with people at CERN working on the central DB,  ensuring we were recording everything that they would later be expecting.  She quickly recognized that the central DB was not going to be usable in the near term and that we needed something more serious than a Google form at the MACs.  In addition, she was the first to clearly see that the database wouldn't simply be a repository for information after module completion, but could  naturally function as an information bus to share information between disconnected steps during module assembly.  The computers and software measuring component irregularities are completely separate from those assembling the modules, yet detailed information needs to be propagated between them.  
  
Sindhu proposed an elegant solution to both problems. We would establish a local database at each MAC, which could be implemented relatively quickly and would provide a robust solution independent of a functioning central database.  This would give the MACs flexibility in the type and amount of information stored and would create a communication channel between assembly computers over a local access network without exposing them to the internet.  
  
When Sindhu first proposed this idea, it was not popular. It required "extra" (i.e. originally unforeseen) effort at the MACs. She faced significant opposition both from me and later from the other of the MACs. Couldn't we just write directly to the central DB ?  Was the added overhead of another database really worth it?  She persisted, pointing out that writing to a local DB was, in the end, wasn't much more work than going straight to the central DB, plus it would be far more efficient for communication between assembly steps. After a few rounds, she won me over, and later convinced the larger MAC group. This wasn't easy because it required real work from other groups, but Sindhu persuaded them that the additional effort was worthwhile.  
  
She proceeded to design and implement software that could be easily replicated at other MACs. She developed many of the DB interfaces for the assembly-specific GUIs (Gantry and Bonder) and created a framework to import/export data to/from CERN. These tools have been implemented at all six silicon module assembly centers. Collectively, we have produced approximately 200 modules, still without a fully functional central DB. Without Sindhu's efforts, we would be completely lost.  
  
I would love to see Sindhu recognized for this work.  Database infrastructure is not a sexy project -- its almost always taken for granted and isn't something tangible you can hold in your hands. I don't need to emphasize how critical the database will be throughout production; we literally couldn't operate without it. Sindhu is a great example of a student having the correct vision, overcoming objections, and successfully executing a task critical for the upgrade. I cannot recommend Sindhu enough.

# Follow-ups


# Links: 



202504111451


# Copy-edited Version



During assembly of the first modules at CMU, Sindhu was tasked with tracking which parts were used in which modules and recording any peculiarities that arose during assembly. This was months before the CERN-hosted central database was expected to be operational. I told her: *take good notes and don't lose them*. I assumed she would create a Google Sheet to record the information in an ad hoc way; it's what I would have done and would have probably been sufficient...especially because our central database would be up and running soon.

Sindhu took this as an opportunity to implement something more scalable. Having interacted with the team at CERN working on the central DB, she ensured we were recording everything they would later require. She quickly recognized that the central DB wouldn't be usable in the near term and that we needed a more robust solution than a Google form at the MACs. Additionally, she was the first to clearly articulate that the database wouldn't simply be a repository for information after module completion, but could naturally function as an information conduit between disconnected steps during module assembly. The computers and software measuring component irregularities are completely separate from those assembling the modules, yet detailed information needs to be propagated between them.

Sindhu proposed an elegant solution to both problems. We would establish a local database at each MAC, which could be implemented relatively quickly and would provide a robust solution independent of a functioning central database. This would give the MACs flexibility in the type and amount of information stored and would create a communication channel between assembly computers over a local access network without exposing them to the internet.

When Sindhu first proposed this idea, it wasn't popular as it required "extra" (i.e., originally unforeseen) effort at the MACs. She faced significant opposition both from me and later from the other MACs. *Couldn't we just write directly to the central DB?* *Was the added overhead of another database really worth it?* She persisted, pointing out that writing to a local DB wasn't much more work than going straight to the central DB, plus it would be far more efficient for communication between assembly steps. After several discussions, she convinced me, and later won over the larger MAC group. This wasn't easy as it required real work from other groups, but Sindhu persuaded them that the additional effort was worthwhile.

She proceeded to design and implement software that could be easily replicated at other MACs. She developed many of the DB interfaces for the assembly-specific GUIs (Gantry and Bonder) and created a framework to import/export data to/from CERN. These tools have been implemented at all six silicon module assembly centers. Collectively, we have produced approximately 200 modules, still without a fully functional central DB. Without Sindhu's efforts, we would be completely lost.

I would love to see Sindhu recognized for this work. Database infrastructure isn't a glamorous project—it's typically taken for granted and isn't something tangible. I don't need to emphasize how critical the database will be throughout production; we literally couldn't operate without it. This exemplifies a student having the correct vision, overcoming objections, and successfully executing a task vital for the upgrade. I cannot recommend Sindhu highly enough.
