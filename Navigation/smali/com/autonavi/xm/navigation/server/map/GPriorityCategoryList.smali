.class public Lcom/autonavi/xm/navigation/server/map/GPriorityCategoryList;
.super Ljava/lang/Object;


# instance fields
.field public nNumberOfItem:I

.field public pPriorityCategory:[Lcom/autonavi/xm/navigation/server/map/GPriorityCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/map/GPriorityCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/map/GPriorityCategoryList;->nNumberOfItem:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/map/GPriorityCategoryList;->pPriorityCategory:[Lcom/autonavi/xm/navigation/server/map/GPriorityCategory;

    return-void
.end method
