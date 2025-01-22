

Following should fix it:  
ratio.Draw("PE same")  
oldSize = ratio.GetMarkerSize()  
ratio.SetMarkerSize(0)  
ratio.DrawCopy("same e0")  
ratio.SetMarkerSize(oldSize)  
ratio.Draw("PE same")
# Follow-ups


# Links: 



202501221010
