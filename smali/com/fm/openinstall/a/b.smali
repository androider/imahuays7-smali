.class public Lcom/fm/openinstall/a/b;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/fm/openinstall/a/b;


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Lcom/fm/openinstall/f/c;

.field private c:Landroid/content/ClipboardManager;

.field private d:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/fm/openinstall/a/b;

    invoke-static {v0}, Lcom/fm/openinstall/f/c;->a(Ljava/lang/Class;)Lcom/fm/openinstall/f/c;

    move-result-object v0

    iput-object v0, p0, Lcom/fm/openinstall/a/b;->b:Lcom/fm/openinstall/f/c;

    new-instance v0, Lcom/fm/openinstall/a/c;

    invoke-direct {v0, p0}, Lcom/fm/openinstall/a/c;-><init>(Lcom/fm/openinstall/a/b;)V

    iput-object v0, p0, Lcom/fm/openinstall/a/b;->a:Ljava/lang/Runnable;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/fm/openinstall/a/b;->c:Landroid/content/ClipboardManager;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/fm/openinstall/a/b;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/fm/openinstall/a/b;)Landroid/content/ClipboardManager;
    .locals 0

    iget-object p0, p0, Lcom/fm/openinstall/a/b;->c:Landroid/content/ClipboardManager;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/fm/openinstall/a/b;
    .locals 2

    sget-object v0, Lcom/fm/openinstall/a/b;->e:Lcom/fm/openinstall/a/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/fm/openinstall/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fm/openinstall/a/b;->e:Lcom/fm/openinstall/a/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/fm/openinstall/a/b;

    invoke-direct {v1, p0}, Lcom/fm/openinstall/a/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/fm/openinstall/a/b;->e:Lcom/fm/openinstall/a/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/fm/openinstall/a/b;->e:Lcom/fm/openinstall/a/b;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    sget-object v0, Lcom/fm/openinstall/f/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/fm/openinstall/f/a;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "-"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/fm/openinstall/b/a;
    .locals 2

    new-instance v0, Lcom/fm/openinstall/b/a;

    invoke-direct {v0}, Lcom/fm/openinstall/b/a;-><init>()V

    if-eqz p1, :cond_0

    sget-object v1, Lcom/fm/openinstall/f/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/fm/openinstall/b/a;->b(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/fm/openinstall/b/a;->b(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/fm/openinstall/f/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/fm/openinstall/f/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p2}, Lcom/fm/openinstall/b/a;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/fm/openinstall/b/a;->b(I)V

    :cond_1
    return-object v0
.end method

.method public a()Z
    .locals 5

    iget-object v0, p0, Lcom/fm/openinstall/a/b;->c:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v0, 0x1

    if-eqz v2, :cond_3

    sget-object v3, Lcom/fm/openinstall/f/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/fm/openinstall/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/fm/openinstall/a/b;->c()V

    :cond_3
    if-eqz v4, :cond_5

    invoke-static {v4}, Lcom/fm/openinstall/f/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fm/openinstall/f/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v2}, Lcom/fm/openinstall/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/fm/openinstall/a/b;->c()V

    :cond_5
    return v1
.end method

.method public b()Lcom/fm/openinstall/b/a;
    .locals 4

    new-instance v0, Lcom/fm/openinstall/b/a;

    invoke-direct {v0}, Lcom/fm/openinstall/b/a;-><init>()V

    iget-object v1, p0, Lcom/fm/openinstall/a/b;->c:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    if-eqz v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/fm/openinstall/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fm/openinstall/b/a;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/fm/openinstall/a/b;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fm/openinstall/a/b;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
