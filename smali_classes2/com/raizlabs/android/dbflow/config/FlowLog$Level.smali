.class public abstract enum Lcom/raizlabs/android/dbflow/config/FlowLog$Level;
.super Ljava/lang/Enum;
.source "FlowLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/config/FlowLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/config/FlowLog$Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum D:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

.field public static final enum E:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

.field public static final enum I:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

.field public static final enum V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

.field public static final enum W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

.field public static final enum WTF:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

.field private static final synthetic a:[Lcom/raizlabs/android/dbflow/config/FlowLog$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 94
    new-instance v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level$1;

    const-string v1, "V"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog$Level$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    .line 100
    new-instance v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level$2;

    const-string v1, "D"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/raizlabs/android/dbflow/config/FlowLog$Level$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->D:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    .line 106
    new-instance v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level$3;

    const-string v1, "I"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/raizlabs/android/dbflow/config/FlowLog$Level$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->I:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    .line 112
    new-instance v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level$4;

    const-string v1, "W"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/raizlabs/android/dbflow/config/FlowLog$Level$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    .line 118
    new-instance v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level$5;

    const-string v1, "E"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/raizlabs/android/dbflow/config/FlowLog$Level$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->E:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    .line 124
    new-instance v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level$6;

    const-string v1, "WTF"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/raizlabs/android/dbflow/config/FlowLog$Level$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->WTF:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    const/4 v0, 0x6

    .line 93
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->D:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->I:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->E:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    aput-object v1, v0, v6

    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->WTF:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    aput-object v1, v0, v7

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->a:[Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/raizlabs/android/dbflow/config/FlowLog$1;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/FlowLog$Level;
    .locals 1

    .line 93
    const-class v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/config/FlowLog$Level;
    .locals 1

    .line 93
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->a:[Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
