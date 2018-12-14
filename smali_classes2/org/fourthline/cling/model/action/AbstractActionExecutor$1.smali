.class Lorg/fourthline/cling/model/action/AbstractActionExecutor$1;
.super Ljava/lang/Object;
.source "AbstractActionExecutor.java"

# interfaces
.implements Lorg/fourthline/cling/model/Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/model/action/AbstractActionExecutor;->execute(Lorg/fourthline/cling/model/action/ActionInvocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/model/action/AbstractActionExecutor;

.field final synthetic val$actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/model/action/AbstractActionExecutor;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/fourthline/cling/model/action/AbstractActionExecutor$1;->this$0:Lorg/fourthline/cling/model/action/AbstractActionExecutor;

    iput-object p2, p0, Lorg/fourthline/cling/model/action/AbstractActionExecutor$1;->val$actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/fourthline/cling/model/ServiceManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/fourthline/cling/model/action/AbstractActionExecutor$1;->this$0:Lorg/fourthline/cling/model/action/AbstractActionExecutor;

    iget-object v1, p0, Lorg/fourthline/cling/model/action/AbstractActionExecutor$1;->val$actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 75
    invoke-interface {p1}, Lorg/fourthline/cling/model/ServiceManager;->getImplementation()Ljava/lang/Object;

    move-result-object p1

    .line 73
    invoke-virtual {v0, v1, p1}, Lorg/fourthline/cling/model/action/AbstractActionExecutor;->execute(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action invocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fourthline/cling/model/action/AbstractActionExecutor$1;->val$actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
