.class public final Lcom/flurry/sdk/eh;
.super Lcom/flurry/sdk/ei;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/Boolean;

.field public static final g:Ljava/lang/Boolean;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/Boolean;

.field public static final j:Landroid/location/Criteria;

.field public static final k:Landroid/location/Location;

.field public static final l:Ljava/lang/Long;

.field public static final m:Ljava/lang/Boolean;

.field public static final n:Ljava/lang/Long;

.field public static final o:Ljava/lang/Byte;

.field public static final p:Ljava/lang/Boolean;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/Boolean;

.field public static final s:Ljava/lang/Boolean;

.field private static t:Lcom/flurry/sdk/eh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x115

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/eh;->a:Ljava/lang/Integer;

    const/16 v0, 0xb

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/eh;->b:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/flurry/sdk/eh;->c:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/flurry/sdk/eh;->d:Ljava/lang/Integer;

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/flurry/sdk/eh;->f:Ljava/lang/Boolean;

    .line 51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/flurry/sdk/eh;->g:Ljava/lang/Boolean;

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/flurry/sdk/eh;->i:Ljava/lang/Boolean;

    const-wide/16 v2, 0x2710

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/flurry/sdk/eh;->l:Ljava/lang/Long;

    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/flurry/sdk/eh;->m:Ljava/lang/Boolean;

    const/4 v2, -0x1

    .line 60
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    sput-object v2, Lcom/flurry/sdk/eh;->o:Ljava/lang/Byte;

    .line 62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/flurry/sdk/eh;->p:Ljava/lang/Boolean;

    .line 64
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/flurry/sdk/eh;->r:Ljava/lang/Boolean;

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/eh;->s:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/flurry/sdk/ei;-><init>()V

    const-string v0, "AgentVersion"

    .line 1074
    sget-object v1, Lcom/flurry/sdk/eh;->a:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ReleaseMajorVersion"

    .line 1075
    sget-object v1, Lcom/flurry/sdk/eh;->b:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ReleaseMinorVersion"

    .line 1076
    sget-object v1, Lcom/flurry/sdk/eh;->c:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ReleasePatchVersion"

    .line 1077
    sget-object v1, Lcom/flurry/sdk/eh;->d:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ReleaseBetaVersion"

    const-string v1, ""

    .line 1078
    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "VersionName"

    .line 1080
    sget-object v1, Lcom/flurry/sdk/eh;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "CaptureUncaughtExceptions"

    .line 1082
    sget-object v1, Lcom/flurry/sdk/eh;->f:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "UseHttps"

    .line 1084
    sget-object v1, Lcom/flurry/sdk/eh;->g:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ReportUrl"

    .line 1085
    sget-object v1, Lcom/flurry/sdk/eh;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ReportLocation"

    .line 1087
    sget-object v1, Lcom/flurry/sdk/eh;->i:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ExplicitLocation"

    .line 1088
    sget-object v1, Lcom/flurry/sdk/eh;->k:Landroid/location/Location;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ContinueSessionMillis"

    .line 1090
    sget-object v1, Lcom/flurry/sdk/eh;->l:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "LogEvents"

    .line 1091
    sget-object v1, Lcom/flurry/sdk/eh;->m:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Age"

    .line 1092
    sget-object v1, Lcom/flurry/sdk/eh;->n:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Gender"

    .line 1093
    sget-object v1, Lcom/flurry/sdk/eh;->o:Ljava/lang/Byte;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "UserId"

    const-string v1, ""

    .line 1094
    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ProtonEnabled"

    .line 1096
    sget-object v1, Lcom/flurry/sdk/eh;->p:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ProtonConfigUrl"

    .line 1097
    sget-object v1, Lcom/flurry/sdk/eh;->q:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "analyticsEnabled"

    .line 1098
    sget-object v1, Lcom/flurry/sdk/eh;->r:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "IncludeBackgroundSessionsInMetrics"

    .line 1100
    sget-object v1, Lcom/flurry/sdk/eh;->s:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "notificationsEnabled"

    const/4 v1, 0x0

    .line 1101
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/eh;
    .locals 2

    const-class v0, Lcom/flurry/sdk/eh;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/eh;->t:Lcom/flurry/sdk/eh;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/flurry/sdk/eh;

    invoke-direct {v1}, Lcom/flurry/sdk/eh;-><init>()V

    sput-object v1, Lcom/flurry/sdk/eh;->t:Lcom/flurry/sdk/eh;

    .line 109
    :cond_0
    sget-object v1, Lcom/flurry/sdk/eh;->t:Lcom/flurry/sdk/eh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 104
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/flurry/sdk/eh;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/eh;->t:Lcom/flurry/sdk/eh;

    if-eqz v1, :cond_0

    .line 114
    sget-object v1, Lcom/flurry/sdk/eh;->t:Lcom/flurry/sdk/eh;

    invoke-virtual {v1}, Lcom/flurry/sdk/eh;->c()V

    :cond_0
    const/4 v1, 0x0

    .line 117
    sput-object v1, Lcom/flurry/sdk/eh;->t:Lcom/flurry/sdk/eh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 112
    monitor-exit v0

    throw v1
.end method
