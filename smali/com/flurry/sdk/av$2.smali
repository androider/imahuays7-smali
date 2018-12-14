.class final Lcom/flurry/sdk/av$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/av;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/aw;

.field final synthetic b:Lcom/flurry/sdk/ax;

.field final synthetic c:Lcom/flurry/sdk/av;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/av;Lcom/flurry/sdk/aw;Lcom/flurry/sdk/ax;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/flurry/sdk/av$2;->c:Lcom/flurry/sdk/av;

    iput-object p2, p0, Lcom/flurry/sdk/av$2;->a:Lcom/flurry/sdk/aw;

    iput-object p3, p0, Lcom/flurry/sdk/av$2;->b:Lcom/flurry/sdk/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/dj;Ljava/lang/Object;)V
    .locals 13

    .line 162
    check-cast p2, Ljava/lang/String;

    .line 1165
    iget-object v0, p0, Lcom/flurry/sdk/av$2;->a:Lcom/flurry/sdk/aw;

    .line 2122
    iget-object v0, v0, Lcom/flurry/sdk/aw;->l:Ljava/lang/String;

    .line 1166
    iget-object v1, p0, Lcom/flurry/sdk/av$2;->a:Lcom/flurry/sdk/aw;

    .line 2138
    iget-object v1, v1, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/ba;

    .line 3097
    iget-object v1, v1, Lcom/flurry/sdk/ba;->d:Ljava/lang/String;

    .line 1167
    iget-object v2, p0, Lcom/flurry/sdk/av$2;->a:Lcom/flurry/sdk/aw;

    .line 3142
    iget-object v2, v2, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/ba;

    .line 4101
    iget-object v2, v2, Lcom/flurry/sdk/ba;->b:Lcom/flurry/sdk/be;

    .line 1169
    invoke-static {}, Lcom/flurry/sdk/av;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Pulse report to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", HTTP status code is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4165
    iget v5, p1, Lcom/flurry/sdk/dl;->q:I

    .line 1170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 1169
    invoke-static {v5, v3, v4}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 5165
    iget v3, p1, Lcom/flurry/sdk/dl;->q:I

    .line 1174
    iget-object v4, p0, Lcom/flurry/sdk/av$2;->b:Lcom/flurry/sdk/ax;

    .line 6089
    iget-wide v6, p1, Lcom/flurry/sdk/dl;->o:J

    long-to-int v6, v6

    if-gez v6, :cond_0

    .line 7061
    iget-wide v6, v4, Lcom/flurry/sdk/ax;->k:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gtz v10, :cond_1

    .line 7062
    iput-wide v8, v4, Lcom/flurry/sdk/ax;->k:J

    goto :goto_0

    .line 7065
    :cond_0
    iget-wide v7, v4, Lcom/flurry/sdk/ax;->k:J

    int-to-long v9, v6

    add-long v11, v7, v9

    iput-wide v11, v4, Lcom/flurry/sdk/ax;->k:J

    .line 1175
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/flurry/sdk/av$2;->b:Lcom/flurry/sdk/ax;

    iput v3, v4, Lcom/flurry/sdk/ax;->e:I

    .line 1178
    invoke-virtual {p1}, Lcom/flurry/sdk/dj;->b()Z

    move-result v4

    if-nez v4, :cond_7

    .line 7169
    iget-object v3, p1, Lcom/flurry/sdk/dl;->p:Ljava/lang/Exception;

    .line 8123
    iget-object v4, p1, Lcom/flurry/sdk/dl;->p:Ljava/lang/Exception;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    .line 8124
    iget-object v4, p1, Lcom/flurry/sdk/dl;->p:Ljava/lang/Exception;

    instance-of v4, v4, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 8129
    :goto_1
    iget-boolean v8, p1, Lcom/flurry/sdk/dl;->t:Z

    if-nez v8, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :cond_4
    :goto_2
    if-eqz v6, :cond_6

    .line 1183
    invoke-virtual {p1}, Lcom/flurry/sdk/dj;->c()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1184
    invoke-static {}, Lcom/flurry/sdk/av;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Timeout occurred when trying to connect to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8169
    iget-object p1, p1, Lcom/flurry/sdk/dl;->p:Ljava/lang/Exception;

    .line 1185
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1184
    invoke-static {v5, p2, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1187
    :cond_5
    invoke-static {}, Lcom/flurry/sdk/av;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "Manually managed http request timeout occurred for: "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1190
    :goto_3
    iget-object p1, p0, Lcom/flurry/sdk/av$2;->c:Lcom/flurry/sdk/av;

    iget-object p2, p0, Lcom/flurry/sdk/av$2;->b:Lcom/flurry/sdk/ax;

    iget-object v3, p0, Lcom/flurry/sdk/av$2;->a:Lcom/flurry/sdk/aw;

    invoke-static {p1, p2, v3}, Lcom/flurry/sdk/av;->a(Lcom/flurry/sdk/av;Lcom/flurry/sdk/ax;Lcom/flurry/sdk/aw;)V

    goto :goto_4

    .line 1192
    :cond_6
    invoke-static {}, Lcom/flurry/sdk/av;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Error occurred when trying to connect to: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Exception: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1192
    invoke-static {v5, p1, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object p1, p0, Lcom/flurry/sdk/av$2;->c:Lcom/flurry/sdk/av;

    iget-object v3, p0, Lcom/flurry/sdk/av$2;->b:Lcom/flurry/sdk/ax;

    iget-object v4, p0, Lcom/flurry/sdk/av$2;->a:Lcom/flurry/sdk/aw;

    invoke-static {p1, v3, v4, p2}, Lcom/flurry/sdk/av;->a(Lcom/flurry/sdk/av;Lcom/flurry/sdk/ax;Lcom/flurry/sdk/aw;Ljava/lang/String;)V

    .line 1199
    :goto_4
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/av$a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/sdk/be;)V

    return-void

    :cond_7
    const/16 v4, 0xc8

    const/16 v6, 0x12c

    if-lt v3, v4, :cond_8

    if-ge v3, v6, :cond_8

    .line 1205
    iget-object p1, p0, Lcom/flurry/sdk/av$2;->c:Lcom/flurry/sdk/av;

    iget-object p2, p0, Lcom/flurry/sdk/av$2;->b:Lcom/flurry/sdk/ax;

    iget-object v3, p0, Lcom/flurry/sdk/av$2;->a:Lcom/flurry/sdk/aw;

    invoke-static {p1, p2, v3}, Lcom/flurry/sdk/av;->b(Lcom/flurry/sdk/av;Lcom/flurry/sdk/ax;Lcom/flurry/sdk/aw;)V

    .line 1208
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/av$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/sdk/be;)V

    return-void

    :cond_8
    if-lt v3, v6, :cond_9

    const/16 v4, 0x190

    if-ge v3, v4, :cond_9

    .line 1210
    iget-object p2, p0, Lcom/flurry/sdk/av$2;->c:Lcom/flurry/sdk/av;

    iget-object v0, p0, Lcom/flurry/sdk/av$2;->b:Lcom/flurry/sdk/ax;

    iget-object v1, p0, Lcom/flurry/sdk/av$2;->a:Lcom/flurry/sdk/aw;

    invoke-static {p2, v0, v1, p1}, Lcom/flurry/sdk/av;->a(Lcom/flurry/sdk/av;Lcom/flurry/sdk/ax;Lcom/flurry/sdk/aw;Lcom/flurry/sdk/dj;)V

    return-void

    .line 1212
    :cond_9
    invoke-static {}, Lcom/flurry/sdk/av;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " report failed sending to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, p1, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object p1, p0, Lcom/flurry/sdk/av$2;->c:Lcom/flurry/sdk/av;

    iget-object v3, p0, Lcom/flurry/sdk/av$2;->b:Lcom/flurry/sdk/ax;

    iget-object v4, p0, Lcom/flurry/sdk/av$2;->a:Lcom/flurry/sdk/aw;

    invoke-static {p1, v3, v4, p2}, Lcom/flurry/sdk/av;->a(Lcom/flurry/sdk/av;Lcom/flurry/sdk/ax;Lcom/flurry/sdk/aw;Ljava/lang/String;)V

    .line 1217
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/av$a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/sdk/be;)V

    return-void
.end method
