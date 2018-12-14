.class public Lcom/taobao/agoo/a;
.super Landroid/app/Activity;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/agoo/a$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/taobao/agoo/a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private c:Lorg/android/agoo/b/a;

.field private d:Lorg/android/agoo/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/taobao/agoo/a;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/taobao/agoo/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/taobao/agoo/a;Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/taobao/agoo/a;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/taobao/agoo/a;Lorg/android/agoo/b/a;)Lorg/android/agoo/b/a;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/taobao/agoo/a;->c:Lorg/android/agoo/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/taobao/agoo/a;Lorg/android/agoo/b/c;)Lorg/android/agoo/b/c;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/taobao/agoo/a;->d:Lorg/android/agoo/b/c;

    return-object p1
.end method

.method public static a(Lcom/taobao/agoo/a$a;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/taobao/agoo/a;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/taobao/agoo/a;->b:Ljava/util/Set;

    .line 45
    :cond_0
    sget-object v0, Lcom/taobao/agoo/a;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcom/taobao/agoo/a;)Lorg/android/agoo/b/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/taobao/agoo/a;->d:Lorg/android/agoo/b/c;

    return-object p0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 1

    .line 75
    new-instance v0, Lcom/taobao/agoo/f;

    invoke-direct {v0, p0, p1}, Lcom/taobao/agoo/f;-><init>(Lcom/taobao/agoo/a;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/taobao/accs/common/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/taobao/agoo/a;Landroid/content/Intent;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/taobao/agoo/a;->d(Landroid/content/Intent;)V

    return-void
.end method

.method private c(Landroid/content/Intent;)Ljava/lang/String;
    .locals 7

    .line 127
    sget-object v0, Lcom/taobao/agoo/a;->b:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/taobao/agoo/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 128
    sget-object v0, Lcom/taobao/agoo/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/agoo/a$a;

    .line 129
    invoke-interface {v2, p1}, Lcom/taobao/agoo/a$a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    invoke-interface {v2}, Lcom/taobao/agoo/a$a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/agoo/a;->a:Ljava/lang/String;

    move-object v2, v3

    goto/16 :goto_1

    :cond_0
    move-object v2, v3

    goto :goto_0

    :cond_1
    const-string v0, "accs.BaseNotifyClickActivity"

    const-string v2, "no impl, try use default impl to parse intent!"

    .line 136
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    new-instance v0, Lcom/taobao/agoo/g;

    invoke-direct {v0}, Lcom/taobao/agoo/g;-><init>()V

    .line 138
    invoke-interface {v0, p1}, Lcom/taobao/agoo/a$a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    new-instance v0, Lcom/taobao/agoo/j;

    invoke-direct {v0}, Lcom/taobao/agoo/j;-><init>()V

    .line 142
    invoke-interface {v0, p1}, Lcom/taobao/agoo/a$a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    new-instance v0, Lcom/taobao/agoo/i;

    invoke-direct {v0}, Lcom/taobao/agoo/i;-><init>()V

    .line 147
    invoke-interface {v0, p1}, Lcom/taobao/agoo/a$a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 150
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    new-instance v0, Lcom/taobao/agoo/h;

    invoke-direct {v0}, Lcom/taobao/agoo/h;-><init>()V

    .line 152
    invoke-interface {v0, p1}, Lcom/taobao/agoo/a$a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 155
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_5

    const-string p1, "accs"

    const-string v0, "error"

    const-string v5, "parse 3push error"

    .line 156
    invoke-static {p1, v0, v5, v3, v4}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_1

    .line 158
    :cond_5
    invoke-interface {v0}, Lcom/taobao/agoo/a$a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/agoo/a;->a:Ljava/lang/String;

    const-string p1, "accs"

    const-string v0, "error"

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse 3push default "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/taobao/agoo/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v0, v5, v3, v4}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_6
    :goto_1
    const-string p1, "accs.BaseNotifyClickActivity"

    const-string v0, "parseMsgByThirdPush"

    const/4 v3, 0x4

    .line 164
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "result"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v4, "msgSource"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/taobao/agoo/a;->a:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {p1, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic c(Lcom/taobao/agoo/a;)Lorg/android/agoo/b/a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/taobao/agoo/a;->c:Lorg/android/agoo/b/a;

    return-object p0
.end method

.method private d(Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "id"

    .line 172
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_source"

    .line 173
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "report"

    .line 174
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "extData"

    .line 175
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    new-instance v4, Lorg/android/agoo/a/c;

    invoke-direct {v4}, Lorg/android/agoo/a/c;-><init>()V

    .line 178
    iput-object v1, v4, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    .line 179
    iput-object p1, v4, Lorg/android/agoo/a/c;->b:Ljava/lang/String;

    .line 180
    iput-object v2, v4, Lorg/android/agoo/a/c;->e:Ljava/lang/String;

    .line 181
    iput-object v3, v4, Lorg/android/agoo/a/c;->j:Ljava/lang/String;

    const-string p1, "8"

    .line 183
    iput-object p1, v4, Lorg/android/agoo/a/c;->l:Ljava/lang/String;

    const-string p1, "accs.BaseNotifyClickActivity"

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportClickNotifyMsg messageId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " source:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reportStr:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lorg/android/agoo/a/c;->l:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object p1, p0, Lcom/taobao/agoo/a;->d:Lorg/android/agoo/b/c;

    const/4 v1, 0x0

    invoke-virtual {p1, v4, v1}, Lorg/android/agoo/b/c;->b(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "accs.BaseNotifyClickActivity"

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportClickNotifyMsg exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "accs.BaseNotifyClickActivity"

    const-string v0, "onCreate"

    const/4 v1, 0x0

    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lcom/taobao/agoo/a;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/agoo/a;->b(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "accs.BaseNotifyClickActivity"

    const-string v1, "onNewIntent"

    const/4 v2, 0x0

    .line 70
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/taobao/agoo/a;->b(Landroid/content/Intent;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method
