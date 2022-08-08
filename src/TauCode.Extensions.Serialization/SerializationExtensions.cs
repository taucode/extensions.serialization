using Newtonsoft.Json;
using System.Reflection;

namespace TauCode.Extensions.Serialization;

public static class SerializationExtensions
{
    public static T GetDeserializedJson<T>(
        this Assembly assembly,
        string resourceName,
        bool findFullName = false)
    {
        if (findFullName)
        {
            resourceName = assembly.FindFullResourceName(resourceName);
        }

        var json = assembly.GetResourceText(resourceName, findFullName);
        var result = JsonConvert.DeserializeObject<T>(json);
        return result;
    }

    public static string NormalizeJson(string json)
    {
        var obj = JsonConvert.DeserializeObject(json);
        var normalizedJson = JsonConvert.SerializeObject(obj, Formatting.Indented);
        return normalizedJson;
    }
}