.class public Lcom/umeng/commonsdk/statistics/f;
.super Ljava/lang/Object;
.source "NetWorkManager.java"


# instance fields
.field a:Ljava/lang/String;

.field private final b:I

.field private c:Lcom/umeng/commonsdk/statistics/c/f;

.field private d:Lcom/umeng/commonsdk/statistics/b/b;

.field private e:Lcom/umeng/commonsdk/statistics/b/g;

.field private f:Lcom/umeng/commonsdk/statistics/b/b$a;

.field private g:Lcom/umeng/commonsdk/statistics/d/a;

.field private h:Lcom/umeng/commonsdk/statistics/d/c;

.field private i:Lcom/umeng/commonsdk/statistics/d/b;

.field private j:J

.field private k:I

.field private l:I

.field private m:Landroid/content/Context;

.field private n:Lcom/umeng/commonsdk/statistics/a/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcom/umeng/commonsdk/statistics/f;->b:I

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/f;->f:Lcom/umeng/commonsdk/statistics/b/b$a;

    .line 70
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/f;->g:Lcom/umeng/commonsdk/statistics/d/a;

    .line 71
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/f;->h:Lcom/umeng/commonsdk/statistics/d/c;

    .line 72
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/f;->i:Lcom/umeng/commonsdk/statistics/d/b;

    const-wide/16 v1, 0x0

    .line 73
    iput-wide v1, p0, Lcom/umeng/commonsdk/statistics/f;->j:J

    const/4 v3, 0x0

    .line 74
    iput v3, p0, Lcom/umeng/commonsdk/statistics/f;->k:I

    .line 75
    iput v3, p0, Lcom/umeng/commonsdk/statistics/f;->l:I

    .line 76
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/f;->a:Ljava/lang/String;

    .line 246
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/f;->n:Lcom/umeng/commonsdk/statistics/a/e$a;

    .line 85
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    .line 88
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/b/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/b/b;->b()Lcom/umeng/commonsdk/statistics/b/b$a;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->f:Lcom/umeng/commonsdk/statistics/b/b$a;

    .line 90
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/d/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->g:Lcom/umeng/commonsdk/statistics/d/a;

    .line 91
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/d/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/d/b;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->i:Lcom/umeng/commonsdk/statistics/d/b;

    .line 92
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/c/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/c/b;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/umeng/commonsdk/statistics/d/c;->a(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/c/b;)Lcom/umeng/commonsdk/statistics/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->h:Lcom/umeng/commonsdk/statistics/d/c;

    .line 93
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/c/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v4, "thtstart"

    .line 94
    invoke-interface {p1, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/commonsdk/statistics/f;->j:J

    const-string v1, "gkvc"

    .line 95
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/commonsdk/statistics/f;->k:I

    const-string v1, "ekvc"

    .line 96
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/umeng/commonsdk/statistics/f;->l:I

    .line 98
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    const-string v1, "track_list"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->a:Ljava/lang/String;

    .line 101
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/b/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->d:Lcom/umeng/commonsdk/statistics/b/b;

    .line 102
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->d:Lcom/umeng/commonsdk/statistics/b/b;

    new-instance v0, Lcom/umeng/commonsdk/statistics/f$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/f$1;-><init>(Lcom/umeng/commonsdk/statistics/f;)V

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/statistics/b/b;->a(Lcom/umeng/commonsdk/statistics/c/g;)V

    .line 145
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/b/g;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/b/g;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->e:Lcom/umeng/commonsdk/statistics/b/g;

    .line 146
    new-instance p1, Lcom/umeng/commonsdk/statistics/c/f;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/umeng/commonsdk/statistics/c/f;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->c:Lcom/umeng/commonsdk/statistics/c/f;

    .line 147
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->c:Lcom/umeng/commonsdk/statistics/c/f;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/c/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/c/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/statistics/c/f;->a(Lcom/umeng/commonsdk/statistics/c/e;)V

    return-void
.end method

.method private a([B)I
    .locals 4

    .line 220
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/proto/Response;-><init>()V

    .line 221
    new-instance v1, Lcom/umeng/commonsdk/proguard/ai;

    new-instance v2, Lcom/umeng/commonsdk/proguard/ad$a;

    invoke-direct {v2}, Lcom/umeng/commonsdk/proguard/ad$a;-><init>()V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/proguard/ai;-><init>(Lcom/umeng/commonsdk/proguard/am;)V

    const/4 v2, 0x1

    .line 225
    :try_start_0
    invoke-virtual {v1, v0, p1}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/l;[B)V

    .line 227
    iget p1, v0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    if-ne p1, v2, :cond_0

    .line 228
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->d:Lcom/umeng/commonsdk/statistics/b/b;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->getImprint()Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/umeng/commonsdk/statistics/b/b;->b(Lcom/umeng/commonsdk/statistics/proto/d;)V

    .line 229
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/f;->d:Lcom/umeng/commonsdk/statistics/b/b;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/b/b;->c()V

    .line 232
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send log:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/a/d;->b(Ljava/lang/String;)V

    const-string p1, "MobclickRT"

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send log: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/umeng/commonsdk/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/proguard/t;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 239
    :goto_0
    iget p1, v0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    if-ne p1, v2, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x3

    return p1
.end method

.method static synthetic a(Lcom/umeng/commonsdk/statistics/f;)Lcom/umeng/commonsdk/statistics/d/a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/f;->g:Lcom/umeng/commonsdk/statistics/d/a;

    return-object p0
.end method

.method static synthetic b(Lcom/umeng/commonsdk/statistics/f;)Lcom/umeng/commonsdk/statistics/d/b;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/f;->i:Lcom/umeng/commonsdk/statistics/d/b;

    return-object p0
.end method

.method static synthetic c(Lcom/umeng/commonsdk/statistics/f;)Lcom/umeng/commonsdk/statistics/d/c;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/f;->h:Lcom/umeng/commonsdk/statistics/d/c;

    return-object p0
.end method

.method static synthetic d(Lcom/umeng/commonsdk/statistics/f;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 171
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/c/d;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/c/d;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/commonsdk/statistics/c/d;->b(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/c/d;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/c/d;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/umeng/commonsdk/statistics/c/d;->a(Ljava/lang/String;)Z

    move-result p1

    .line 183
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/f;->c:Lcom/umeng/commonsdk/statistics/c/f;

    invoke-virtual {v2, v1, p1}, Lcom/umeng/commonsdk/statistics/c/f;->a([BZ)[B

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    .line 187
    :cond_2
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/f;->a([B)I

    move-result p1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 198
    :pswitch_0
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/c/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/c/b;->e()V

    goto :goto_1

    .line 192
    :pswitch_1
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/f;->e:Lcom/umeng/commonsdk/statistics/b/g;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/b/g;->c()V

    .line 194
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/c/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/c/b;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :pswitch_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    return v1

    :cond_3
    return v0

    :catch_0
    move-exception p1

    .line 213
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/f;->m:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/proguard/t;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
