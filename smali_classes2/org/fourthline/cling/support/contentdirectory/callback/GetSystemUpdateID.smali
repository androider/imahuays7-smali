.class public abstract Lorg/fourthline/cling/support/contentdirectory/callback/GetSystemUpdateID;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "GetSystemUpdateID.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 2

    .line 30
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "GetSystemUpdateID"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    return-void
.end method


# virtual methods
.method public abstract received(Lorg/fourthline/cling/model/action/ActionInvocation;J)V
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 5

    :try_start_0
    const-string v0, "Id"

    .line 37
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t parse GetSystemUpdateID response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/GetSystemUpdateID;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p0, p1, v0, v1}, Lorg/fourthline/cling/support/contentdirectory/callback/GetSystemUpdateID;->received(Lorg/fourthline/cling/model/action/ActionInvocation;J)V

    :cond_0
    return-void
.end method
