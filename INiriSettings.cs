using Rena.Interop.XKBCommon;
namespace NiGUIri;

public interface INiriSettings
{
    public struct Input
    {
        public struct Xkb
        {
            public string Layout { get; set; }
            public string Variant { get; set; }
        }
    }
}