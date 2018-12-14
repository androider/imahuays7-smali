.class public final enum Lorg/fourthline/cling/model/types/Datatype$Default;
.super Ljava/lang/Enum;
.source "Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/model/types/Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/types/Datatype$Default;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum BOOLEAN_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum CALENDAR:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum CHAR:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum CHAR_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum DOUBLE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum DOUBLE_PRIMTIIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum FLOAT:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum FLOAT_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum INTEGER:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum INTEGER_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum SHORT:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum SHORT_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum STRING:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum UNSIGNED_INTEGER_FOUR_BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum UNSIGNED_INTEGER_ONE_BYTE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum UNSIGNED_INTEGER_TWO_BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum URI:Lorg/fourthline/cling/model/types/Datatype$Default;


# instance fields
.field private builtinType:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field private javaType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 44
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "BOOLEAN"

    const-class v2, Ljava/lang/Boolean;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 45
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "BOOLEAN_PRIMITIVE"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->BOOLEAN_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 46
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "SHORT"

    const-class v2, Ljava/lang/Short;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2_SHORT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->SHORT:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 47
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "SHORT_PRIMITIVE"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2_SHORT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->SHORT_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 48
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "INTEGER"

    const-class v2, Ljava/lang/Integer;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->INTEGER:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 49
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "INTEGER_PRIMITIVE"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->INTEGER_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 50
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "UNSIGNED_INTEGER_ONE_BYTE"

    const-class v2, Lorg/fourthline/cling/model/types/UnsignedIntegerOneByte;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_ONE_BYTE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 51
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "UNSIGNED_INTEGER_TWO_BYTES"

    const-class v2, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_TWO_BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 52
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "UNSIGNED_INTEGER_FOUR_BYTES"

    const-class v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_FOUR_BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 53
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "FLOAT"

    const-class v2, Ljava/lang/Float;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->R4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->FLOAT:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 54
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "FLOAT_PRIMITIVE"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->R4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v14, 0xa

    invoke-direct {v0, v1, v14, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->FLOAT_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 55
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "DOUBLE"

    const-class v2, Ljava/lang/Double;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->FLOAT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v15, 0xb

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->DOUBLE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 56
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "DOUBLE_PRIMTIIVE"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->FLOAT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->DOUBLE_PRIMTIIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 57
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "CHAR"

    const-class v2, Ljava/lang/Character;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->CHAR:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->CHAR:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 58
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "CHAR_PRIMITIVE"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->CHAR:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->CHAR_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 59
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "STRING"

    const-class v2, Ljava/lang/String;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->STRING:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 60
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "CALENDAR"

    const-class v2, Ljava/util/Calendar;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->DATETIME:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->CALENDAR:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 61
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "BYTES"

    const-class v2, [B

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BIN_BASE64:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 62
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-string v1, "URI"

    const-class v2, Ljava/net/URI;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->URI:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->URI:Lorg/fourthline/cling/model/types/Datatype$Default;

    const/16 v0, 0x13

    .line 42
    new-array v0, v0, [Lorg/fourthline/cling/model/types/Datatype$Default;

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Default;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->BOOLEAN_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->SHORT:Lorg/fourthline/cling/model/types/Datatype$Default;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->SHORT_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->INTEGER:Lorg/fourthline/cling/model/types/Datatype$Default;

    aput-object v1, v0, v8

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->INTEGER_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    aput-object v1, v0, v9

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_ONE_BYTE:Lorg/fourthline/cling/model/types/Datatype$Default;

    aput-object v1, v0, v10

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_TWO_BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

    aput-object v1, v0, v11

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_FOUR_BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

    aput-object v1, v0, v12

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->FLOAT:Lorg/fourthline/cling/model/types/Datatype$Default;

    aput-object v1, v0, v13

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->FLOAT_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    aput-object v1, v0, v14

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->DOUBLE:Lorg/fourthline/cling/model/types/Datatype$Default;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->DOUBLE_PRIMTIIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->CHAR:Lorg/fourthline/cling/model/types/Datatype$Default;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->CHAR_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->STRING:Lorg/fourthline/cling/model/types/Datatype$Default;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->CALENDAR:Lorg/fourthline/cling/model/types/Datatype$Default;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->URI:Lorg/fourthline/cling/model/types/Datatype$Default;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->$VALUES:[Lorg/fourthline/cling/model/types/Datatype$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lorg/fourthline/cling/model/types/Datatype$Builtin;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lorg/fourthline/cling/model/types/Datatype$Default;->javaType:Ljava/lang/Class;

    .line 69
    iput-object p4, p0, Lorg/fourthline/cling/model/types/Datatype$Default;->builtinType:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    return-void
.end method

.method public static getByJavaType(Ljava/lang/Class;)Lorg/fourthline/cling/model/types/Datatype$Default;
    .locals 5

    .line 81
    invoke-static {}, Lorg/fourthline/cling/model/types/Datatype$Default;->values()[Lorg/fourthline/cling/model/types/Datatype$Default;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 82
    invoke-virtual {v3}, Lorg/fourthline/cling/model/types/Datatype$Default;->getJavaType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/Datatype$Default;
    .locals 1

    .line 42
    const-class v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/types/Datatype$Default;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/types/Datatype$Default;
    .locals 1

    .line 42
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->$VALUES:[Lorg/fourthline/cling/model/types/Datatype$Default;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/types/Datatype$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/types/Datatype$Default;

    return-object v0
.end method


# virtual methods
.method public getBuiltinType()Lorg/fourthline/cling/model/types/Datatype$Builtin;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/fourthline/cling/model/types/Datatype$Default;->builtinType:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    return-object v0
.end method

.method public getJavaType()Ljava/lang/Class;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/fourthline/cling/model/types/Datatype$Default;->javaType:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/Datatype$Default;->getJavaType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/Datatype$Default;->getBuiltinType()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
