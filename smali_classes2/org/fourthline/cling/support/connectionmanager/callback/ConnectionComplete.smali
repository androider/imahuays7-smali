.class public abstract Lorg/fourthline/cling/support/connectionmanager/callback/ConnectionComplete;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "ConnectionComplete.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;I)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0, p2}, Lorg/fourthline/cling/support/connectionmanager/callback/ConnectionComplete;-><init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;I)V
    .locals 2

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "ConnectionComplete"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0, p2}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/controlpoint/ControlPoint;)V

    .line 34
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/callback/ConnectionComplete;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "ConnectionID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
