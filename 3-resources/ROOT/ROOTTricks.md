[[ROOT]]

# iPlot

```python
from iUtils import parseOpts, getPM, setBatch, plot

setBatch()
(o,a) = parseOpts()
pm = getPM(o)
```


# ROOT Tree Codes

The list of currently supported types is given below:

C : a character string terminated by the 0 character
B : an 8 bit signed integer (Char_t)
b : an 8 bit unsigned integer (UChar_t)
S : a 16 bit signed integer (Short_t)
s : a 16 bit unsigned integer (UShort_t)
I : a 32 bit signed integer (Int_t)
i : a 32 bit unsigned integer (UInt_t)
F : a 32 bit floating point (Float_t)
f : a 24 bit floating point with truncated mantissa (Float16_t)
D : a 64 bit floating point (Double_t)
d : a 24 bit truncated floating point (Double32_t)
L : a 64 bit signed integer (Long64_t)
l : a 64 bit unsigned integer (ULong64_t)
O : [the letter o, not a zero] a boolean (Bool_t)


# Fix Ratio

Following should fix it:
```python
       ratio.Draw("PE same")
       oldSize = ratio.GetMarkerSize()
       ratio.SetMarkerSize(0)
       ratio.DrawCopy("same e0")
       ratio.SetMarkerSize(oldSize)
       ratio.Draw("PE same")
```

# Optparsee


```python
import optparse
parser = optparse.OptionParser()
parser.add_option('-o', '--outputDir',           help="OutputDir")
o, a = parser.parse_args()

if not os.path.isdir(o.outputDir):
    os.mkdir(o.outputDir)
```  

# Boilerplate

from ROOT import gROOT  
gROOT.SetBatch(True)  
import ROOT  
ROOT.gErrorIgnoreLevel = ROOT.kWarning