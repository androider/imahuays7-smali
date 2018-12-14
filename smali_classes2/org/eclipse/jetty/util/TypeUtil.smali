.class public Lorg/eclipse/jetty/util/TypeUtil;
.super Ljava/lang/Object;
.source "TypeUtil.java"


# static fields
.field public static CR:I = 0xd

.field public static LF:I = 0xa

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final class2Name:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final class2Value:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final name2Class:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    const-class v0, Lorg/eclipse/jetty/util/TypeUtil;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/TypeUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    .line 55
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Boolean.TYPE"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Byte.TYPE"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Character.TYPE"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Double.TYPE"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Float.TYPE"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Integer.TYPE"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Long.TYPE"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Short.TYPE"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Void.TYPE"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Boolean"

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Byte"

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Character"

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Double"

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Float"

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Integer"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Long"

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.Short"

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "Boolean"

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "Byte"

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "Character"

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "Double"

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "Float"

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "Integer"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "Long"

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "Short"

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "string"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "String"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v1, "java.lang.String"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    .line 103
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "boolean"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v3, "byte"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v3, "char"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v3, "double"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v3, "float"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "int"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v3, "long"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v3, "short"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v3, "void"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Boolean;

    const-string v3, "java.lang.Boolean"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Byte;

    const-string v3, "java.lang.Byte"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Character;

    const-string v3, "java.lang.Character"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Double;

    const-string v3, "java.lang.Double"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Float;

    const-string v3, "java.lang.Float"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Integer;

    const-string v3, "java.lang.Integer"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Long;

    const-string v3, "java.lang.Long"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Short;

    const-string v3, "java.lang.Short"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-string v1, "void"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v1, Ljava/lang/String;

    const-string v2, "java.lang.String"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 132
    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 134
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Byte;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Short;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Ljava/lang/Boolean;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Byte;

    const-class v3, Ljava/lang/Byte;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Double;

    const-class v3, Ljava/lang/Double;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Float;

    const-class v3, Ljava/lang/Float;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Integer;

    const-class v3, Ljava/lang/Integer;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Long;

    const-class v3, Ljava/lang/Long;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Short;

    const-class v3, Ljava/lang/Short;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 180
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static call(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 566
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 568
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 570
    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    array-length v4, p3

    if-eq v3, v4, :cond_1

    goto :goto_2

    .line 572
    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez p2, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    .line 574
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, p0, :cond_4

    goto :goto_2

    .line 579
    :cond_4
    :try_start_0
    aget-object v3, v0, v2

    invoke-virtual {v3, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    .line 587
    sget-object v4, Lorg/eclipse/jetty/util/TypeUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v3

    .line 583
    sget-object v4, Lorg/eclipse/jetty/util/TypeUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 591
    :cond_5
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertHexDigit(B)B
    .locals 3

    and-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v1, p0, 0x6

    mul-int/lit8 v1, v1, 0x19

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x10

    int-to-byte v0, v0

    if-ltz v0, :cond_1

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 362
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!hex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertHexDigit(I)I
    .locals 3

    and-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v1, p0, 0x6

    mul-int/lit8 v1, v1, 0x19

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x10

    if-ltz v0, :cond_1

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 375
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!hex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dump(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 474
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jetty/util/TypeUtil;->dump(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static dump(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 480
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Dump Loaders:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    if-eqz p0, :cond_0

    .line 483
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  loader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fromHexString(Ljava/lang/String;)[B
    .locals 4

    .line 460
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 463
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x2

    .line 465
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 466
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static fromName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 190
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static jarFor(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    const/4 v0, 0x0

    .line 547
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".class"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 549
    invoke-static {v0, p0, v1}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p0

    .line 550
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "jar:file:"

    .line 551
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x4

    const-string v3, "!/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 556
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, p0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method public static parseBytes(Ljava/lang/String;I)[B
    .locals 5

    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 329
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 330
    div-int/lit8 v3, v2, 0x2

    invoke-static {p0, v2, v1, p1}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static parseInt(Ljava/lang/String;III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-gez p2, :cond_0

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    add-int v2, p1, v0

    .line 279
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 281
    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v2

    if-ltz v2, :cond_2

    if-lt v2, p3, :cond_1

    goto :goto_1

    :cond_1
    mul-int v1, v1, p3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_2
    :goto_1
    new-instance p3, Ljava/lang/NumberFormatException;

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_3
    return v1
.end method

.method public static parseInt([BIII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-gez p2, :cond_0

    .line 305
    array-length p2, p0

    sub-int/2addr p2, p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_6

    add-int v2, p1, v0

    .line 309
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    add-int/lit8 v3, v2, -0x30

    const/16 v4, 0xa

    if-ltz v3, :cond_1

    if-ge v3, p3, :cond_1

    if-lt v3, v4, :cond_3

    :cond_1
    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v2, -0x41

    if-lt v3, v4, :cond_2

    if-lt v3, p3, :cond_3

    :cond_2
    add-int/lit8 v3, v2, -0x61

    :cond_3
    if-ltz v3, :cond_5

    if-lt v3, p3, :cond_4

    goto :goto_1

    :cond_4
    mul-int v1, v1, p3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_5
    :goto_1
    new-instance p3, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p3, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_6
    return v1
.end method

.method public static readLine(Ljava/io/InputStream;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    .line 495
    new-array v1, v0, [B

    const/4 v2, 0x0

    move-object v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 503
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, 0x1

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v1, v6

    if-ne v1, v6, :cond_1

    .line 509
    sget v7, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    if-ne v5, v7, :cond_1

    goto :goto_0

    .line 512
    :cond_1
    sget v7, Lorg/eclipse/jetty/util/TypeUtil;->CR:I

    if-eq v5, v7, :cond_4

    sget v7, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    if-ne v5, v7, :cond_2

    goto :goto_1

    .line 515
    :cond_2
    array-length v6, v4

    if-lt v3, v6, :cond_3

    .line 518
    array-length v6, v4

    add-int/2addr v6, v0

    new-array v6, v6, [B

    .line 519
    array-length v7, v4

    invoke-static {v4, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v6

    :cond_3
    add-int/lit8 v6, v3, 0x1

    int-to-byte v5, v5

    .line 521
    aput-byte v5, v4, v3

    move v3, v6

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v0, -0x1

    if-ne v5, v0, :cond_5

    if-nez v3, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 528
    :cond_5
    sget v0, Lorg/eclipse/jetty/util/TypeUtil;->CR:I

    if-ne v5, v0, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lt v0, v6, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 530
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->mark(I)V

    .line 531
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 532
    sget v1, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    if-eq v0, v1, :cond_6

    .line 533
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 537
    :cond_6
    new-array p0, v3, [B

    .line 538
    invoke-static {v4, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public static toHex(BLjava/lang/Appendable;)V
    .locals 5

    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0x30

    const/16 v2, 0x37

    const/16 v3, 0x9

    if-le v0, v3, :cond_0

    const/16 v4, 0x37

    goto :goto_0

    :cond_0
    const/16 v4, 0x30

    :goto_0
    add-int/2addr v4, v0

    int-to-char v0, v4

    .line 385
    :try_start_0
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    and-int/lit8 p0, p0, 0xf

    if-le p0, v3, :cond_1

    const/16 v1, 0x37

    :cond_1
    add-int/2addr v1, p0

    int-to-char p0, v1

    .line 387
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 391
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static toHex(ILjava/lang/Appendable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x1c

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0x30

    const/16 v2, 0x37

    const/16 v3, 0x9

    if-le v0, v3, :cond_0

    const/16 v4, 0x37

    goto :goto_0

    :cond_0
    const/16 v4, 0x30

    :goto_0
    add-int/2addr v4, v0

    int-to-char v0, v4

    .line 399
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/high16 v0, 0xf000000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit8 v0, v0, 0xf

    if-le v0, v3, :cond_1

    const/16 v4, 0x37

    goto :goto_1

    :cond_1
    const/16 v4, 0x30

    :goto_1
    add-int/2addr v4, v0

    int-to-char v0, v4

    .line 401
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/high16 v0, 0xf00000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x14

    and-int/lit8 v0, v0, 0xf

    if-le v0, v3, :cond_2

    const/16 v4, 0x37

    goto :goto_2

    :cond_2
    const/16 v4, 0x30

    :goto_2
    add-int/2addr v4, v0

    int-to-char v0, v4

    .line 403
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/high16 v0, 0xf0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, 0xf

    if-le v0, v3, :cond_3

    const/16 v4, 0x37

    goto :goto_3

    :cond_3
    const/16 v4, 0x30

    :goto_3
    add-int/2addr v4, v0

    int-to-char v0, v4

    .line 405
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const v0, 0xf000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0xf

    if-le v0, v3, :cond_4

    const/16 v4, 0x37

    goto :goto_4

    :cond_4
    const/16 v4, 0x30

    :goto_4
    add-int/2addr v4, v0

    int-to-char v0, v4

    .line 407
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    and-int/lit16 v0, p0, 0xf00

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0xf

    if-le v0, v3, :cond_5

    const/16 v4, 0x37

    goto :goto_5

    :cond_5
    const/16 v4, 0x30

    :goto_5
    add-int/2addr v4, v0

    int-to-char v0, v4

    .line 409
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    if-le v0, v3, :cond_6

    const/16 v4, 0x37

    goto :goto_6

    :cond_6
    const/16 v4, 0x30

    :goto_6
    add-int/2addr v4, v0

    int-to-char v0, v4

    .line 411
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    and-int/lit8 p0, p0, 0xf

    if-le p0, v3, :cond_7

    const/16 v1, 0x37

    :cond_7
    add-int/2addr v1, p0

    int-to-char p0, v1

    .line 413
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 p0, 0x0

    const/16 p1, 0x24

    .line 415
    invoke-static {p0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public static toHex(JLjava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    .line 422
    invoke-static {v0, p2}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(ILjava/lang/Appendable;)V

    long-to-int p0, p0

    .line 423
    invoke-static {p0, p2}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(ILjava/lang/Appendable;)V

    return-void
.end method

.method public static toHexString(B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 429
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    invoke-static {v1, v2, v0}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 2

    .line 435
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 5

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_2

    .line 444
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 445
    div-int/lit8 v3, v2, 0x10

    rem-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x30

    const/16 v4, 0x39

    if-le v3, v4, :cond_0

    add-int/lit8 v3, v3, -0x30

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x41

    :cond_0
    int-to-char v3, v3

    .line 448
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    rem-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x30

    if-le v2, v4, :cond_1

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x61

    :cond_1
    int-to-char v2, v2

    .line 452
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 200
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static toString([BI)Ljava/lang/String;
    .locals 6

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 341
    div-int v4, v3, p1

    rem-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x30

    const/16 v5, 0x39

    if-le v4, v5, :cond_0

    add-int/lit8 v4, v4, -0x30

    add-int/lit8 v4, v4, -0xa

    add-int/lit8 v4, v4, 0x61

    :cond_0
    int-to-char v4, v4

    .line 344
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    rem-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x30

    if-le v3, v5, :cond_1

    add-int/lit8 v3, v3, -0x30

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    :cond_1
    int-to-char v3, v3

    .line 348
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 213
    :try_start_0
    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 216
    :cond_0
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 218
    new-array p0, v2, [Ljava/lang/Object;

    aput-object p1, p0, v3

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 220
    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-class v1, Ljava/lang/Character;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 224
    :cond_2
    new-array v1, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 225
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 222
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/Character;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Character;-><init>(C)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 241
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Error;

    if-eqz p1, :cond_4

    .line 242
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :catch_1
    :cond_4
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 256
    invoke-static {p0}, Lorg/eclipse/jetty/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/eclipse/jetty/util/TypeUtil;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
