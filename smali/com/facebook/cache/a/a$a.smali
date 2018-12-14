.class Lcom/facebook/cache/a/a$a;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/common/file/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/a/a;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/cache/a/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/cache/a/a;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/facebook/cache/a/a$a;->a:Lcom/facebook/cache/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/cache/a/a$a;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cache/a/a;Lcom/facebook/cache/a/a$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lcom/facebook/cache/a/a$a;-><init>(Lcom/facebook/cache/a/a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/cache/a/d$a;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/facebook/cache/a/a$a;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/facebook/cache/a/a$a;->a:Lcom/facebook/cache/a/a;

    invoke-static {v0, p1}, Lcom/facebook/cache/a/a;->a(Lcom/facebook/cache/a/a;Ljava/io/File;)Lcom/facebook/cache/a/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v1, v0, Lcom/facebook/cache/a/a$c;->a:Ljava/lang/String;

    const-string v2, ".cnt"

    if-ne v1, v2, :cond_0

    .line 256
    iget-object v1, p0, Lcom/facebook/cache/a/a$a;->b:Ljava/util/List;

    new-instance v2, Lcom/facebook/cache/a/a$b;

    iget-object v0, v0, Lcom/facebook/cache/a/a$c;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/facebook/cache/a/a$b;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/facebook/cache/a/a$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c(Ljava/io/File;)V
    .locals 0

    return-void
.end method
