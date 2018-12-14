.class public final enum Lorg/fourthline/cling/support/model/PlayMode;
.super Ljava/lang/Enum;
.source "PlayMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/PlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/PlayMode;

.field public static final enum DIRECT_1:Lorg/fourthline/cling/support/model/PlayMode;

.field public static final enum INTRO:Lorg/fourthline/cling/support/model/PlayMode;

.field public static final enum NORMAL:Lorg/fourthline/cling/support/model/PlayMode;

.field public static final enum RANDOM:Lorg/fourthline/cling/support/model/PlayMode;

.field public static final enum REPEAT_ALL:Lorg/fourthline/cling/support/model/PlayMode;

.field public static final enum REPEAT_ONE:Lorg/fourthline/cling/support/model/PlayMode;

.field public static final enum SHUFFLE:Lorg/fourthline/cling/support/model/PlayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 22
    new-instance v0, Lorg/fourthline/cling/support/model/PlayMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/PlayMode;->NORMAL:Lorg/fourthline/cling/support/model/PlayMode;

    .line 23
    new-instance v0, Lorg/fourthline/cling/support/model/PlayMode;

    const-string v1, "SHUFFLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/fourthline/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/PlayMode;->SHUFFLE:Lorg/fourthline/cling/support/model/PlayMode;

    .line 24
    new-instance v0, Lorg/fourthline/cling/support/model/PlayMode;

    const-string v1, "REPEAT_ONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/fourthline/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/PlayMode;->REPEAT_ONE:Lorg/fourthline/cling/support/model/PlayMode;

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/model/PlayMode;

    const-string v1, "REPEAT_ALL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/fourthline/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/PlayMode;->REPEAT_ALL:Lorg/fourthline/cling/support/model/PlayMode;

    .line 26
    new-instance v0, Lorg/fourthline/cling/support/model/PlayMode;

    const-string v1, "RANDOM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/fourthline/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/PlayMode;->RANDOM:Lorg/fourthline/cling/support/model/PlayMode;

    .line 27
    new-instance v0, Lorg/fourthline/cling/support/model/PlayMode;

    const-string v1, "DIRECT_1"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/fourthline/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/PlayMode;->DIRECT_1:Lorg/fourthline/cling/support/model/PlayMode;

    .line 28
    new-instance v0, Lorg/fourthline/cling/support/model/PlayMode;

    const-string v1, "INTRO"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/fourthline/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/PlayMode;->INTRO:Lorg/fourthline/cling/support/model/PlayMode;

    const/4 v0, 0x7

    .line 21
    new-array v0, v0, [Lorg/fourthline/cling/support/model/PlayMode;

    sget-object v1, Lorg/fourthline/cling/support/model/PlayMode;->NORMAL:Lorg/fourthline/cling/support/model/PlayMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/PlayMode;->SHUFFLE:Lorg/fourthline/cling/support/model/PlayMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/PlayMode;->REPEAT_ONE:Lorg/fourthline/cling/support/model/PlayMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/model/PlayMode;->REPEAT_ALL:Lorg/fourthline/cling/support/model/PlayMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/model/PlayMode;->RANDOM:Lorg/fourthline/cling/support/model/PlayMode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/model/PlayMode;->DIRECT_1:Lorg/fourthline/cling/support/model/PlayMode;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/support/model/PlayMode;->INTRO:Lorg/fourthline/cling/support/model/PlayMode;

    aput-object v1, v0, v8

    sput-object v0, Lorg/fourthline/cling/support/model/PlayMode;->$VALUES:[Lorg/fourthline/cling/support/model/PlayMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PlayMode;
    .locals 1

    .line 21
    const-class v0, Lorg/fourthline/cling/support/model/PlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/PlayMode;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/PlayMode;
    .locals 1

    .line 21
    sget-object v0, Lorg/fourthline/cling/support/model/PlayMode;->$VALUES:[Lorg/fourthline/cling/support/model/PlayMode;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/PlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/PlayMode;

    return-object v0
.end method
