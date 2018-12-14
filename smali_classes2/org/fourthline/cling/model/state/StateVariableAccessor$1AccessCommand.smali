.class Lorg/fourthline/cling/model/state/StateVariableAccessor$1AccessCommand;
.super Ljava/lang/Object;
.source "StateVariableAccessor.java"

# interfaces
.implements Lorg/fourthline/cling/model/Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/model/state/StateVariableAccessor;->read(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Object;)Lorg/fourthline/cling/model/state/StateVariableValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1AccessCommand"
.end annotation


# instance fields
.field result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/fourthline/cling/model/state/StateVariableAccessor;

.field final synthetic val$serviceImpl:Ljava/lang/Object;

.field final synthetic val$stateVariable:Lorg/fourthline/cling/model/meta/StateVariable;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/model/state/StateVariableAccessor;Ljava/lang/Object;Lorg/fourthline/cling/model/meta/StateVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lorg/fourthline/cling/model/state/StateVariableAccessor$1AccessCommand;->this$0:Lorg/fourthline/cling/model/state/StateVariableAccessor;

    iput-object p2, p0, Lorg/fourthline/cling/model/state/StateVariableAccessor$1AccessCommand;->val$serviceImpl:Ljava/lang/Object;

    iput-object p3, p0, Lorg/fourthline/cling/model/state/StateVariableAccessor$1AccessCommand;->val$stateVariable:Lorg/fourthline/cling/model/meta/StateVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/fourthline/cling/model/ServiceManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object p1, p0, Lorg/fourthline/cling/model/state/StateVariableAccessor$1AccessCommand;->this$0:Lorg/fourthline/cling/model/state/StateVariableAccessor;

    iget-object v0, p0, Lorg/fourthline/cling/model/state/StateVariableAccessor$1AccessCommand;->val$serviceImpl:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/state/StateVariableAccessor;->read(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/state/StateVariableAccessor$1AccessCommand;->result:Ljava/lang/Object;

    .line 39
    iget-object p1, p0, Lorg/fourthline/cling/model/state/StateVariableAccessor$1AccessCommand;->val$stateVariable:Lorg/fourthline/cling/model/meta/StateVariable;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/LocalService;

    iget-object v0, p0, Lorg/fourthline/cling/model/state/StateVariableAccessor$1AccessCommand;->result:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/meta/LocalService;->isStringConvertibleType(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lorg/fourthline/cling/model/state/StateVariableAccessor$1AccessCommand;->result:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/state/StateVariableAccessor$1AccessCommand;->result:Ljava/lang/Object;

    :cond_0
    return-void
.end method
