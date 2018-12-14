.class public Lanet/channel/d/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/d/a;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "com.taobao.analysis.FlowCenter"

    .line 17
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lanet/channel/d/b;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lanet/channel/d/b;->a:Z

    const-string v1, "DefaultNetworkAnalysis"

    const-string v2, "no NWNetworkAnalysisSDK sdk"

    const/4 v3, 0x0

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lanet/channel/d/c;)V
    .locals 10

    .line 26
    iget-boolean v0, p0, Lanet/channel/d/b;->a:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/taobao/analysis/FlowCenter;->getInstance()Lcom/taobao/analysis/FlowCenter;

    move-result-object v1

    invoke-static {}, Lanet/channel/d;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lanet/channel/d/c;->a:Ljava/lang/String;

    iget-object v4, p1, Lanet/channel/d/c;->b:Ljava/lang/String;

    iget-object v5, p1, Lanet/channel/d/c;->c:Ljava/lang/String;

    iget-wide v6, p1, Lanet/channel/d/c;->d:J

    iget-wide v8, p1, Lanet/channel/d/c;->e:J

    invoke-virtual/range {v1 .. v9}, Lcom/taobao/analysis/FlowCenter;->commitFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method
