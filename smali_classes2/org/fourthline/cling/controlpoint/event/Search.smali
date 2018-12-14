.class public Lorg/fourthline/cling/controlpoint/event/Search;
.super Ljava/lang/Object;
.source "Search.java"


# instance fields
.field protected mxSeconds:I

.field protected searchType:Lorg/fourthline/cling/model/message/header/UpnpHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/fourthline/cling/model/message/header/STAllHeader;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/header/STAllHeader;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/controlpoint/event/Search;->searchType:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 28
    sget-object v0, Lorg/fourthline/cling/model/message/header/MXHeader;->DEFAULT_VALUE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/fourthline/cling/controlpoint/event/Search;->mxSeconds:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/fourthline/cling/model/message/header/STAllHeader;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/header/STAllHeader;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/controlpoint/event/Search;->searchType:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 28
    sget-object v0, Lorg/fourthline/cling/model/message/header/MXHeader;->DEFAULT_VALUE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/fourthline/cling/controlpoint/event/Search;->mxSeconds:I

    .line 43
    iput p1, p0, Lorg/fourthline/cling/controlpoint/event/Search;->mxSeconds:I

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/header/UpnpHeader;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/fourthline/cling/model/message/header/STAllHeader;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/header/STAllHeader;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/controlpoint/event/Search;->searchType:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 28
    sget-object v0, Lorg/fourthline/cling/model/message/header/MXHeader;->DEFAULT_VALUE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/fourthline/cling/controlpoint/event/Search;->mxSeconds:I

    .line 34
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/event/Search;->searchType:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/fourthline/cling/model/message/header/STAllHeader;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/header/STAllHeader;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/controlpoint/event/Search;->searchType:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 28
    sget-object v0, Lorg/fourthline/cling/model/message/header/MXHeader;->DEFAULT_VALUE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/fourthline/cling/controlpoint/event/Search;->mxSeconds:I

    .line 38
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/event/Search;->searchType:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 39
    iput p2, p0, Lorg/fourthline/cling/controlpoint/event/Search;->mxSeconds:I

    return-void
.end method


# virtual methods
.method public getMxSeconds()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/fourthline/cling/controlpoint/event/Search;->mxSeconds:I

    return v0
.end method

.method public getSearchType()Lorg/fourthline/cling/model/message/header/UpnpHeader;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/event/Search;->searchType:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    return-object v0
.end method
