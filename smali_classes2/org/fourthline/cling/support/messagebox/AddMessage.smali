.class public abstract Lorg/fourthline/cling/support/messagebox/AddMessage;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "AddMessage.java"


# instance fields
.field protected final mimeType:Lorg/seamless/util/MimeType;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/messagebox/model/Message;)V
    .locals 2

    .line 32
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "AddMessage"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    const-string p1, "text/xml;charset=\"utf-8\""

    .line 29
    invoke-static {p1}, Lorg/seamless/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/seamless/util/MimeType;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/support/messagebox/AddMessage;->mimeType:Lorg/seamless/util/MimeType;

    .line 34
    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/AddMessage;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string v0, "MessageID"

    invoke-virtual {p2}, Lorg/fourthline/cling/support/messagebox/model/Message;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/AddMessage;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string v0, "MessageType"

    iget-object v1, p0, Lorg/fourthline/cling/support/messagebox/AddMessage;->mimeType:Lorg/seamless/util/MimeType;

    invoke-virtual {v1}, Lorg/seamless/util/MimeType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/AddMessage;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string v0, "Message"

    invoke-virtual {p2}, Lorg/fourthline/cling/support/messagebox/model/Message;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
