.class public Lcom/flurry/sdk/bl;
.super Lcom/flurry/sdk/dp;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ei$a;


# static fields
.field private static final e:Ljava/lang/String; = "bl"


# instance fields
.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lcom/flurry/sdk/bl;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 4

    const-string p1, "Analytics"

    .line 58
    const-class v0, Lcom/flurry/sdk/bl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/dp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AnalyticsData_"

    .line 59
    iput-object p1, p0, Lcom/flurry/sdk/bl;->b:Ljava/lang/String;

    .line 1065
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object p1

    const-string v0, "UseHttps"

    .line 1067
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/bl;->g:Z

    const-string v0, "UseHttps"

    .line 1068
    invoke-virtual {p1, v0, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 1069
    sget-object v0, Lcom/flurry/sdk/bl;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, UseHttps = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/flurry/sdk/bl;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ReportUrl"

    .line 1071
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ReportUrl"

    .line 1072
    invoke-virtual {p1, v1, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 1073
    invoke-direct {p0, v0}, Lcom/flurry/sdk/bl;->a(Ljava/lang/String;)V

    .line 1074
    sget-object p1, Lcom/flurry/sdk/bl;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, ReportUrl = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/flurry/sdk/bl;->b()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/flurry/sdk/bl;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/bl;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/flurry/sdk/bl;->d()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/bl;Ljava/lang/String;)V
    .locals 1

    .line 5283
    new-instance v0, Lcom/flurry/sdk/dp$6;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/dp$6;-><init>(Lcom/flurry/sdk/dp;Ljava/lang/String;)V

    .line 6056
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ".do"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 80
    sget-object v1, Lcom/flurry/sdk/bl;->e:Ljava/lang/String;

    const-string v2, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/bl;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0xe48ec3c

    if-eq v0, v1, :cond_1

    const v1, 0x62629b7b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ReportUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "UseHttps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x6

    .line 104
    sget-object p2, Lcom/flurry/sdk/bl;->e:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 99
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .line 100
    invoke-direct {p0, p2}, Lcom/flurry/sdk/bl;->a(Ljava/lang/String;)V

    .line 101
    sget-object p1, Lcom/flurry/sdk/bl;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, ReportUrl = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 95
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/bl;->g:Z

    .line 96
    sget-object p1, Lcom/flurry/sdk/bl;->e:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, UseHttps = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/bl;->g:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 181
    new-instance v0, Lcom/flurry/sdk/bl$2;

    invoke-direct {v0, p0, p3}, Lcom/flurry/sdk/bl$2;-><init>(Lcom/flurry/sdk/bl;I)V

    .line 5056
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 191
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/dp;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected final a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1168
    iget-object v0, p0, Lcom/flurry/sdk/bl;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/flurry/sdk/bl;->f:Ljava/lang/String;

    goto :goto_0

    .line 1172
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/bl;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "https://data.flurry.com/aap.do"

    goto :goto_0

    :cond_1
    const-string v0, "http://data.flurry.com/aap.do"

    :goto_0
    const/4 v1, 0x4

    .line 121
    sget-object v2, Lcom/flurry/sdk/bl;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FlurryDataSender: start upload data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/flurry/sdk/dj;

    invoke-direct {v1}, Lcom/flurry/sdk/dj;-><init>()V

    .line 2077
    iput-object v0, v1, Lcom/flurry/sdk/dl;->g:Ljava/lang/String;

    const v0, 0x186a0

    .line 3028
    iput v0, v1, Lcom/flurry/sdk/er;->u:I

    .line 128
    sget-object v0, Lcom/flurry/sdk/dl$a;->c:Lcom/flurry/sdk/dl$a;

    .line 3085
    iput-object v0, v1, Lcom/flurry/sdk/dl;->h:Lcom/flurry/sdk/dl$a;

    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    .line 129
    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/dj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/flurry/sdk/dt;

    invoke-direct {v0}, Lcom/flurry/sdk/dt;-><init>()V

    .line 4027
    iput-object v0, v1, Lcom/flurry/sdk/dj;->c:Lcom/flurry/sdk/dx;

    .line 5023
    iput-object p1, v1, Lcom/flurry/sdk/dj;->b:Ljava/lang/Object;

    .line 132
    new-instance p1, Lcom/flurry/sdk/bl$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/flurry/sdk/bl$1;-><init>(Lcom/flurry/sdk/bl;Ljava/lang/String;Ljava/lang/String;)V

    .line 5035
    iput-object p1, v1, Lcom/flurry/sdk/dj;->a:Lcom/flurry/sdk/dj$a;

    .line 164
    invoke-static {}, Lcom/flurry/sdk/ch;->a()Lcom/flurry/sdk/ch;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/flurry/sdk/ch;->a(Ljava/lang/Object;Lcom/flurry/sdk/er;)V

    return-void
.end method
