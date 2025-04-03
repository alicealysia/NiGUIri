using CsTools.Extensions;
using CsTools.Functional;
using GtkDotNet;
using Kadlet;

namespace NiGUIri;

public class NiriSettings
{
    private KdlDocument _document;
    private Stream _stream;
    public NiriSettings(KdlDocument kdlDocument, Stream stream)
    {
        _document = kdlDocument;
        _stream = stream;
        
    }
}