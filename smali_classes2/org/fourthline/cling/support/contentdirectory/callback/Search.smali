.class public abstract Lorg/fourthline/cling/support/contentdirectory/callback/Search;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;
    }
.end annotation


# static fields
.field public static final CAPS_WILDCARD:Ljava/lang/String; = "*"

.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v4, "*"

    const/4 v0, 0x0

    .line 62
    new-array v8, v0, [Lorg/fourthline/cling/support/model/SortCriterion;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;-><init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;[Lorg/fourthline/cling/support/model/SortCriterion;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;[Lorg/fourthline/cling/support/model/SortCriterion;)V
    .locals 2

    .line 70
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "Search"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 72
    sget-object p1, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating browse action for container ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string v0, "ContainerID"

    invoke-virtual {p1, v0, p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "SearchCriteria"

    invoke-virtual {p1, p2, p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "Filter"

    invoke-virtual {p1, p2, p4}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "StartingIndex"

    new-instance p3, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {p3, p5, p6}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-virtual {p1, p2, p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "RequestedCount"

    new-instance p3, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    if-nez p7, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->getDefaultMaxResults()Ljava/lang/Long;

    move-result-object p7

    :cond_0
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-direct {p3, p4, p5}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    .line 78
    invoke-virtual {p1, p2, p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "SortCriteria"

    invoke-static {p8}, Lorg/fourthline/cling/support/model/SortCriterion;->toString([Lorg/fourthline/cling/support/model/SortCriterion;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDefaultMaxResults()Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x3e7

    .line 127
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public abstract received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/DIDLContent;)V
.end method

.method public receivedRaw(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/SearchResult;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public run()V
    .locals 1

    .line 87
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->LOADING:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;)V

    .line 88
    invoke-super {p0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->run()V

    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 6

    .line 93
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->log:Ljava/util/logging/Logger;

    const-string v1, "Successful search action, reading output argument values"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lorg/fourthline/cling/support/model/SearchResult;

    const-string v1, "Result"

    .line 96
    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NumberReturned"

    .line 97
    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-string v3, "TotalMatches"

    .line 98
    invoke-virtual {p1, v3}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-string v4, "UpdateID"

    .line 99
    invoke-virtual {p1, v4}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/SearchResult;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V

    .line 101
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->receivedRaw(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/SearchResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/SearchResult;->getCountLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/SearchResult;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    :try_start_0
    new-instance v1, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-direct {v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;-><init>()V

    .line 106
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/SearchResult;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->parse(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLContent;

    move-result-object v0

    .line 107
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/DIDLContent;)V

    .line 108
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->OK:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t parse DIDL XML response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/DIDLContent;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/DIDLContent;)V

    .line 117
    sget-object p1, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->NO_CONTENT:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;)V

    :goto_0
    return-void
.end method

.method public abstract updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;)V
.end method
