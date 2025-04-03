// See https://aka.ms/new-console-template for more information
using Kadlet;

namespace NiGUIri;

public static class Program
{
    public static void Main(string[] args)
    {
        string config = Environment.GetEnvironmentVariable("XDG_CONFIG_HOME") ?? Environment.GetEnvironmentVariable("HOME") + "/.config";
        config += "/niri/config.kdl";
        KdlReader reader = new();
        Stream stream = File.Open(config, FileMode.Open);
        KdlDocument kdlDocument = reader.Parse(stream);
        NiriSettings niriSettings = new NiriSettings(kdlDocument, stream);
    }
}