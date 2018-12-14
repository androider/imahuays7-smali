.class final Lcom/jess/arms/b/a/b$a;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/jess/arms/b/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jess/arms/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/jess/arms/b/b/n;

.field private b:Landroid/app/Application;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jess/arms/b/a/b$1;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/jess/arms/b/a/b$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/jess/arms/b/a/b$a;)Landroid/app/Application;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/jess/arms/b/a/b$a;->b:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic b(Lcom/jess/arms/b/a/b$a;)Lcom/jess/arms/b/b/n;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/jess/arms/b/a/b$a;->a:Lcom/jess/arms/b/b/n;

    return-object p0
.end method


# virtual methods
.method public synthetic a(Landroid/app/Application;)Lcom/jess/arms/b/a/a$a;
    .locals 0

    .line 340
    invoke-virtual {p0, p1}, Lcom/jess/arms/b/a/b$a;->b(Landroid/app/Application;)Lcom/jess/arms/b/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lcom/jess/arms/b/b/n;)Lcom/jess/arms/b/a/a$a;
    .locals 0

    .line 340
    invoke-virtual {p0, p1}, Lcom/jess/arms/b/a/b$a;->b(Lcom/jess/arms/b/b/n;)Lcom/jess/arms/b/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/jess/arms/b/a/a;
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/jess/arms/b/a/b$a;->a:Lcom/jess/arms/b/b/n;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/jess/arms/b/b/n;

    .line 349
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/jess/arms/b/a/b$a;->b:Landroid/app/Application;

    if-nez v0, :cond_1

    .line 352
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/app/Application;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_1
    new-instance v0, Lcom/jess/arms/b/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jess/arms/b/a/b;-><init>(Lcom/jess/arms/b/a/b$a;Lcom/jess/arms/b/a/b$1;)V

    return-object v0
.end method

.method public b(Landroid/app/Application;)Lcom/jess/arms/b/a/b$a;
    .locals 0

    .line 359
    invoke-static {p1}, La/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/jess/arms/b/a/b$a;->b:Landroid/app/Application;

    return-object p0
.end method

.method public b(Lcom/jess/arms/b/b/n;)Lcom/jess/arms/b/a/b$a;
    .locals 0

    .line 365
    invoke-static {p1}, La/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/b/b/n;

    iput-object p1, p0, Lcom/jess/arms/b/a/b$a;->a:Lcom/jess/arms/b/b/n;

    return-object p0
.end method
