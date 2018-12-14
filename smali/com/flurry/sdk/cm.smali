.class public Lcom/flurry/sdk/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "cm"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 7

    .line 15
    invoke-static {}, Lcom/flurry/sdk/cm;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "."

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 21
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Flurry_Android_%d_%d.%d.%d%s%s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 22
    invoke-static {}, Lcom/flurry/sdk/cm;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1039
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v5

    const-string v6, "ReleaseMajorVersion"

    .line 1040
    invoke-virtual {v5, v6}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1039
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 22
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 1044
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v5

    const-string v6, "ReleaseMinorVersion"

    .line 1045
    invoke-virtual {v5, v6}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1044
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 22
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 1049
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v5

    const-string v6, "ReleasePatchVersion"

    .line 1050
    invoke-virtual {v5, v6}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1049
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object v0, v3, v4

    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/cm;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 21
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()I
    .locals 4

    .line 33
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v0

    const-string v1, "AgentVersion"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 34
    sget-object v1, Lcom/flurry/sdk/cm;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAgentVersion() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    .line 27
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v0

    const-string v1, "ReleaseBetaVersion"

    .line 28
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
