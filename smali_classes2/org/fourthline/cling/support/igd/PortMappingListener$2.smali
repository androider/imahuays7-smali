.class Lorg/fourthline/cling/support/igd/PortMappingListener$2;
.super Lorg/fourthline/cling/support/igd/callback/PortMappingDelete;
.source "PortMappingListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/igd/PortMappingListener;->beforeShutdown(Lorg/fourthline/cling/registry/Registry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/igd/PortMappingListener;

.field final synthetic val$it:Ljava/util/Iterator;

.field final synthetic val$pm:Lorg/fourthline/cling/support/model/PortMapping;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/igd/PortMappingListener;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/PortMapping;Lorg/fourthline/cling/support/model/PortMapping;Ljava/util/Iterator;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/fourthline/cling/support/igd/PortMappingListener$2;->this$0:Lorg/fourthline/cling/support/igd/PortMappingListener;

    iput-object p5, p0, Lorg/fourthline/cling/support/igd/PortMappingListener$2;->val$pm:Lorg/fourthline/cling/support/model/PortMapping;

    iput-object p6, p0, Lorg/fourthline/cling/support/igd/PortMappingListener$2;->val$it:Ljava/util/Iterator;

    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/support/igd/callback/PortMappingDelete;-><init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/PortMapping;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 1

    .line 156
    iget-object p1, p0, Lorg/fourthline/cling/support/igd/PortMappingListener$2;->this$0:Lorg/fourthline/cling/support/igd/PortMappingListener;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to delete port mapping: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/fourthline/cling/support/igd/PortMappingListener$2;->val$pm:Lorg/fourthline/cling/support/model/PortMapping;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/igd/PortMappingListener;->handleFailureMessage(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lorg/fourthline/cling/support/igd/PortMappingListener$2;->this$0:Lorg/fourthline/cling/support/igd/PortMappingListener;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reason: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/igd/PortMappingListener;->handleFailureMessage(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 2

    .line 150
    invoke-static {}, Lorg/fourthline/cling/support/igd/PortMappingListener;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Port mapping deleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fourthline/cling/support/igd/PortMappingListener$2;->val$pm:Lorg/fourthline/cling/support/model/PortMapping;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lorg/fourthline/cling/support/igd/PortMappingListener$2;->val$it:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    return-void
.end method
