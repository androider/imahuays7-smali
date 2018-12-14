.class Lorg/seamless/util/dbunit/H2DBUnitOperations$1;
.super Lorg/dbunit/dataset/datatype/DefaultDataTypeFactory;
.source "H2DBUnitOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/util/dbunit/H2DBUnitOperations;->editConfig(Lorg/dbunit/database/DatabaseConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/util/dbunit/H2DBUnitOperations;


# direct methods
.method constructor <init>(Lorg/seamless/util/dbunit/H2DBUnitOperations;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/seamless/util/dbunit/H2DBUnitOperations$1;->this$0:Lorg/seamless/util/dbunit/H2DBUnitOperations;

    invoke-direct {p0}, Lorg/dbunit/dataset/datatype/DefaultDataTypeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataType(ILjava/lang/String;)Lorg/dbunit/dataset/datatype/DataType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dbunit/dataset/datatype/DataTypeException;
        }
    .end annotation

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 59
    sget-object p1, Lorg/dbunit/dataset/datatype/DataType;->BOOLEAN:Lorg/dbunit/dataset/datatype/DataType;

    return-object p1

    .line 61
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/dbunit/dataset/datatype/DefaultDataTypeFactory;->createDataType(ILjava/lang/String;)Lorg/dbunit/dataset/datatype/DataType;

    move-result-object p1

    return-object p1
.end method
