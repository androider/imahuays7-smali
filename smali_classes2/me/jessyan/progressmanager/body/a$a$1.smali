.class Lme/jessyan/progressmanager/body/a$a$1;
.super Ljava/lang/Object;
.source "ProgressRequestBody.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jessyan/progressmanager/body/a$a;->write(Lokio/c;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lme/jessyan/progressmanager/a;

.field final synthetic e:Lme/jessyan/progressmanager/body/a$a;


# direct methods
.method constructor <init>(Lme/jessyan/progressmanager/body/a$a;JJJLme/jessyan/progressmanager/a;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lme/jessyan/progressmanager/body/a$a$1;->e:Lme/jessyan/progressmanager/body/a$a;

    iput-wide p2, p0, Lme/jessyan/progressmanager/body/a$a$1;->a:J

    iput-wide p4, p0, Lme/jessyan/progressmanager/body/a$a$1;->b:J

    iput-wide p6, p0, Lme/jessyan/progressmanager/body/a$a$1;->c:J

    iput-object p8, p0, Lme/jessyan/progressmanager/body/a$a$1;->d:Lme/jessyan/progressmanager/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 130
    iget-object v0, p0, Lme/jessyan/progressmanager/body/a$a$1;->e:Lme/jessyan/progressmanager/body/a$a;

    iget-object v0, v0, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v0, v0, Lme/jessyan/progressmanager/body/a;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    iget-wide v1, p0, Lme/jessyan/progressmanager/body/a$a$1;->a:J

    invoke-virtual {v0, v1, v2}, Lme/jessyan/progressmanager/body/ProgressInfo;->d(J)V

    .line 131
    iget-object v0, p0, Lme/jessyan/progressmanager/body/a$a$1;->e:Lme/jessyan/progressmanager/body/a$a;

    iget-object v0, v0, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v0, v0, Lme/jessyan/progressmanager/body/a;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    iget-wide v1, p0, Lme/jessyan/progressmanager/body/a$a$1;->b:J

    invoke-virtual {v0, v1, v2}, Lme/jessyan/progressmanager/body/ProgressInfo;->a(J)V

    .line 132
    iget-object v0, p0, Lme/jessyan/progressmanager/body/a$a$1;->e:Lme/jessyan/progressmanager/body/a$a;

    iget-object v0, v0, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v0, v0, Lme/jessyan/progressmanager/body/a;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    iget-wide v1, p0, Lme/jessyan/progressmanager/body/a$a$1;->c:J

    invoke-virtual {v0, v1, v2}, Lme/jessyan/progressmanager/body/ProgressInfo;->c(J)V

    .line 133
    iget-object v0, p0, Lme/jessyan/progressmanager/body/a$a$1;->e:Lme/jessyan/progressmanager/body/a$a;

    iget-object v0, v0, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v0, v0, Lme/jessyan/progressmanager/body/a;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    iget-wide v1, p0, Lme/jessyan/progressmanager/body/a$a$1;->b:J

    iget-object v3, p0, Lme/jessyan/progressmanager/body/a$a$1;->e:Lme/jessyan/progressmanager/body/a$a;

    iget-object v3, v3, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v3, v3, Lme/jessyan/progressmanager/body/a;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    invoke-virtual {v3}, Lme/jessyan/progressmanager/body/ProgressInfo;->a()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lme/jessyan/progressmanager/body/ProgressInfo;->a(Z)V

    .line 134
    iget-object v0, p0, Lme/jessyan/progressmanager/body/a$a$1;->d:Lme/jessyan/progressmanager/a;

    iget-object v1, p0, Lme/jessyan/progressmanager/body/a$a$1;->e:Lme/jessyan/progressmanager/body/a$a;

    iget-object v1, v1, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v1, v1, Lme/jessyan/progressmanager/body/a;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    invoke-interface {v0, v1}, Lme/jessyan/progressmanager/a;->a(Lme/jessyan/progressmanager/body/ProgressInfo;)V

    return-void
.end method
