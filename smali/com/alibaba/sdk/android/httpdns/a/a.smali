.class Lcom/alibaba/sdk/android/httpdns/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/a/f;


# instance fields
.field private final a:Lcom/alibaba/sdk/android/httpdns/a/d;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/a/d;

    invoke-direct {v0, p1}, Lcom/alibaba/sdk/android/httpdns/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/a/d;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/httpdns/a/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/a/d;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/a/d;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/a/e;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/a/d;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/a/d;->a(Lcom/alibaba/sdk/android/httpdns/a/e;)J

    return-void
.end method

.method public b(Lcom/alibaba/sdk/android/httpdns/a/e;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/a/d;

    iget-object v1, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sdk/android/httpdns/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
