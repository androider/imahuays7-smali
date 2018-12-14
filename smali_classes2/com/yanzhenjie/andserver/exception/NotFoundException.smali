.class public Lcom/yanzhenjie/andserver/exception/NotFoundException;
.super Lcom/yanzhenjie/andserver/exception/BaseException;
.source "NotFoundException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "The resource [%1$s] does not exist."

    const/4 v1, 0x1

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x194

    invoke-direct {p0, v0, p1}, Lcom/yanzhenjie/andserver/exception/BaseException;-><init>(ILjava/lang/String;)V

    return-void
.end method
