.class public abstract Lorg/fourthline/cling/support/igd/callback/GetExternalIP;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "GetExternalIP.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 2

    .line 28
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "GetExternalIPAddress"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    return-void
.end method


# virtual methods
.method protected abstract success(Ljava/lang/String;)V
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1

    const-string v0, "NewExternalIPAddress"

    .line 33
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/igd/callback/GetExternalIP;->success(Ljava/lang/String;)V

    return-void
.end method
