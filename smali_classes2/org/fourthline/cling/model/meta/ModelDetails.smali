.class public Lorg/fourthline/cling/model/meta/ModelDetails;
.super Ljava/lang/Object;
.source "ModelDetails.java"


# instance fields
.field private modelDescription:Ljava/lang/String;

.field private modelName:Ljava/lang/String;

.field private modelNumber:Ljava/lang/String;

.field private modelURI:Ljava/net/URI;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelDescription:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelDescription:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelNumber:Ljava/lang/String;

    .line 61
    invoke-static {p4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelURI:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelDescription:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelNumber:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelURI:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public getModelDescription()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getModelURI()Ljava/net/URI;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/ModelDetails;->modelURI:Ljava/net/URI;

    return-object v0
.end method
