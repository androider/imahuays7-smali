.class public abstract Lorg/fourthline/cling/support/messagebox/RemoveMessage;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "RemoveMessage.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;I)V
    .locals 2

    .line 35
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "RemoveMessage"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 36
    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/RemoveMessage;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string v0, "MessageID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/messagebox/model/Message;)V
    .locals 0

    .line 31
    invoke-virtual {p2}, Lorg/fourthline/cling/support/messagebox/model/Message;->getId()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/support/messagebox/RemoveMessage;-><init>(Lorg/fourthline/cling/model/meta/Service;I)V

    return-void
.end method
