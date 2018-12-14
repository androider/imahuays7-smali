.class public Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;
.super Lorg/fourthline/cling/model/state/StateVariableAccessor;
.source "FieldStateVariableAccessor.java"


# instance fields
.field protected field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fourthline/cling/model/state/StateVariableAccessor;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;->field:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;->field:Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Lorg/seamless/util/Reflections;->get(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/fourthline/cling/model/state/StateVariableAccessor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
