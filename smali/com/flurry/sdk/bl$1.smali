.class final Lcom/flurry/sdk/bl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/bl;->a([BLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/dj$a<",
        "[B",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/bl;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/flurry/sdk/bl$1;->c:Lcom/flurry/sdk/bl;

    iput-object p2, p0, Lcom/flurry/sdk/bl$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/bl$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/dj;Ljava/lang/Object;)V
    .locals 2

    .line 1165
    iget p1, p1, Lcom/flurry/sdk/dl;->q:I

    if-lez p1, :cond_1

    .line 1140
    invoke-static {}, Lcom/flurry/sdk/bl;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Analytics report sent."

    invoke-static {p2, v0}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-static {}, Lcom/flurry/sdk/bl;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlurryDataSender: report "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/bl$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sent. HTTP response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, p2, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-static {}, Lcom/flurry/sdk/dc;->c()I

    move-result p2

    if-gt p2, v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/dc;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1147
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p2

    new-instance v0, Lcom/flurry/sdk/bl$1$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/bl$1$1;-><init>(Lcom/flurry/sdk/bl$1;I)V

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/cl;->a(Ljava/lang/Runnable;)V

    .line 1157
    :cond_0
    iget-object p2, p0, Lcom/flurry/sdk/bl$1;->c:Lcom/flurry/sdk/bl;

    iget-object v0, p0, Lcom/flurry/sdk/bl$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/bl$1;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/flurry/sdk/bl;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1158
    iget-object p1, p0, Lcom/flurry/sdk/bl$1;->c:Lcom/flurry/sdk/bl;

    invoke-static {p1}, Lcom/flurry/sdk/bl;->a(Lcom/flurry/sdk/bl;)V

    return-void

    .line 1160
    :cond_1
    iget-object p1, p0, Lcom/flurry/sdk/bl$1;->c:Lcom/flurry/sdk/bl;

    iget-object p2, p0, Lcom/flurry/sdk/bl$1;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/flurry/sdk/bl;->a(Lcom/flurry/sdk/bl;Ljava/lang/String;)V

    return-void
.end method
