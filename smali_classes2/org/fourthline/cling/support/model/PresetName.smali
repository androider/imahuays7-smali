.class public final enum Lorg/fourthline/cling/support/model/PresetName;
.super Ljava/lang/Enum;
.source "PresetName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/PresetName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/PresetName;

.field public static final enum FactoryDefaults:Lorg/fourthline/cling/support/model/PresetName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lorg/fourthline/cling/support/model/PresetName;

    const-string v1, "FactoryDefaults"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/PresetName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/PresetName;->FactoryDefaults:Lorg/fourthline/cling/support/model/PresetName;

    const/4 v0, 0x1

    .line 21
    new-array v0, v0, [Lorg/fourthline/cling/support/model/PresetName;

    sget-object v1, Lorg/fourthline/cling/support/model/PresetName;->FactoryDefaults:Lorg/fourthline/cling/support/model/PresetName;

    aput-object v1, v0, v2

    sput-object v0, Lorg/fourthline/cling/support/model/PresetName;->$VALUES:[Lorg/fourthline/cling/support/model/PresetName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PresetName;
    .locals 1

    .line 21
    const-class v0, Lorg/fourthline/cling/support/model/PresetName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/PresetName;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/PresetName;
    .locals 1

    .line 21
    sget-object v0, Lorg/fourthline/cling/support/model/PresetName;->$VALUES:[Lorg/fourthline/cling/support/model/PresetName;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/PresetName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/PresetName;

    return-object v0
.end method
