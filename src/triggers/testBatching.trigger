trigger testBatching on Account (before insert) {
    static integer i=1;    
    i++;        
    System.debug('Count of records: '+String.valueOf(i-1));
    System.debug('Count of records #: '+String.valueOf(Trigger.new.size()));
}