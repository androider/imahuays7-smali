.class public abstract Lorg/fourthline/cling/model/state/StateVariableAccessor;
.super Ljava/lang/Object;
.source "StateVariableAccessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getReturnType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract read(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public read(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Object;)Lorg/fourthline/cling/model/state/StateVariableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/StateVariable<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/fourthline/cling/model/state/StateVariableValue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/fourthline/cling/model/state/StateVariableAccessor$1AccessCommand;

    invoke-direct {v0, p0, p2, p1}, Lorg/fourthline/cling/model/state/StateVariableAccessor$1AccessCommand;-><init>(Lorg/fourthline/cling/model/state/StateVariableAccessor;Ljava/lang/Object;Lorg/fourthline/cling/model/meta/StateVariable;)V

    .line 46
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalService;->getManager()Lorg/fourthline/cling/model/ServiceManager;

    move-result-object p2

    invoke-interface {p2, v0}, Lorg/fourthline/cling/model/ServiceManager;->execute(Lorg/fourthline/cling/model/Command;)V

    .line 47
    new-instance p2, Lorg/fourthline/cling/model/state/StateVariableValue;

    iget-object v0, v0, Lorg/fourthline/cling/model/state/StateVariableAccessor$1AccessCommand;->result:Ljava/lang/Object;

    invoke-direct {p2, p1, v0}, Lorg/fourthline/cling/model/state/StateVariableValue;-><init>(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Object;)V

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
