.class public Lorg/fourthline/cling/model/meta/ManufacturerDetails;
.super Ljava/lang/Object;
.source "ManufacturerDetails.java"


# instance fields
.field private manufacturer:Ljava/lang/String;

.field private manufacturerURI:Ljava/net/URI;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->manufacturer:Ljava/lang/String;

    .line 48
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->manufacturerURI:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->manufacturer:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->manufacturerURI:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->manufacturerURI:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerURI()Ljava/net/URI;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->manufacturerURI:Ljava/net/URI;

    return-object v0
.end method
