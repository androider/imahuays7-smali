.class public Lorg/fourthline/cling/model/action/ActionCancelledException;
.super Lorg/fourthline/cling/model/action/ActionException;
.source "ActionCancelledException.java"


# direct methods
.method public constructor <init>(Ljava/lang/InterruptedException;)V
    .locals 2

    .line 25
    sget-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v1, "Action execution interrupted"

    invoke-direct {p0, v0, v1, p1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
